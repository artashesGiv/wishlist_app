import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wishlist/repositories/repositories.dart';

part 'wish_item_event.dart';
part 'wish_item_state.dart';

class WishItemBloc extends Bloc<WishItemEvent, WishItemState> {
  WishItemBloc(this.wishRepository) : super(WishItemInitial()) {
    on<LoadWishItem>((event, emit) async {
      try {
        if (state is! WishItemLoaded) {
          emit(WishItemLoading());
        }

        final wishItem = await wishRepository.getWish(event.wishId);
        emit(WishItemLoaded(wishItem: wishItem));
      } catch (error) {
        emit(WishItemLoadingError(error: error));
      } finally {
        event.compliter?.complete();
      }
    });
  }

  final AbstractWishRepository wishRepository;
}
