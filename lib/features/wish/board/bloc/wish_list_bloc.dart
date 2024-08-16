import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wishlist/repositories/repositories.dart';

part 'wish_list_event.dart';
part 'wish_list_state.dart';

class WishListBloc extends Bloc<WishListEvent, WishListState> {
  WishListBloc(this.wishRepository) : super(WishListInitial()) {
    on<LoadWishList>((event, emit) async {
      try {
        if (state is! WishListLoaded) {
          emit(WishListLoading());
        }

        final wishList = await wishRepository.getWishList();
        emit(WishListLoaded(wishList: wishList));
      } catch (error) {
        emit(WishListLoadingError(error: error));
      } finally {
        event.compliter?.complete();
      }
    });
  }

  final AbstractWishRepository wishRepository;
}
