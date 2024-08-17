import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wishlist/repositories/repositories.dart';

part 'list_event.dart';
part 'list_state.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  ListBloc(this.wishRepository) : super(ListInitial()) {
    on<LoadList>((event, emit) async {
      try {
        if (state is! ListLoaded) {
          emit(ListLoading());
        }

        final wishList = await wishRepository.getWishList();
        emit(ListLoaded(wishList: wishList));
      } catch (error) {
        emit(ListLoadingError(error: error));
      } finally {
        event.compliter?.complete();
      }
    });
  }

  final AbstractWishRepository wishRepository;
}
