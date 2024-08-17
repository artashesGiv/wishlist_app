part of 'editor_bloc.dart';

abstract class EditorState extends Equatable {}

class EditorInitial extends EditorState {
  @override
  List<Object?> get props => [];
}

class EditorLoading extends EditorState {
  @override
  List<Object?> get props => [];
}

class EditorLoaded extends EditorState {
  EditorLoaded({required this.newWish});

  final Wish newWish;

  @override
  List<Object?> get props => [];
}

class EditorLoadingError extends EditorState {
  EditorLoadingError({required this.error});

  final Object? error;

  @override
  List<Object?> get props => [error];
}
