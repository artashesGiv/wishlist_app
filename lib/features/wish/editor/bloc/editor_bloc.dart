import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wishlist/repositories/repositories.dart';

part 'editor_event.dart';
part 'editor_state.dart';

class EditorBloc extends Bloc<EditorEvent, EditorState> {
  EditorBloc(this.wishRepository) : super(EditorInitial()) {
    on<LoadEditor>((event, emit) async {
      try {
        if (state is! EditorLoaded) {
          emit(EditorLoading());
        }

        final newWish = await wishRepository.createWish(event.wish);

        emit(EditorLoaded(newWish: newWish));
      } catch (error) {
        emit(EditorLoadingError(error: error));
      } finally {
        event.compliter?.complete();
      }
    });
  }

  final AbstractWishRepository wishRepository;
}
