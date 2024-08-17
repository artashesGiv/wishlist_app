import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wishlist/repositories/repositories.dart';

part 'item_event.dart';
part 'item_state.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  ItemBloc(this.wishRepository) : super(ItemInitial()) {
    on<LoadItem>((event, emit) async {
      try {
        if (state is! ItemLoaded) {
          emit(ItemLoading());
        }

        final wishItem = await wishRepository.getWish(event.wishId);
        emit(ItemLoaded(wishItem: wishItem));
      } catch (error) {
        emit(ItemLoadingError(error: error));
      } finally {
        event.compliter?.complete();
      }
    });
  }

  final AbstractWishRepository wishRepository;
}
