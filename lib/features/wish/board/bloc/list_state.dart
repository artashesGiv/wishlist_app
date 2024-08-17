part of 'list_bloc.dart';

abstract class ListState extends Equatable {}

class ListInitial extends ListState {
  @override
  List<Object?> get props => [];
}

class ListLoading extends ListState {
  @override
  List<Object?> get props => [];
}

class ListLoaded extends ListState {
  ListLoaded({required this.wishList});

  final List<Wish> wishList;

  @override
  List<Object?> get props => [wishList];
}

class ListLoadingError extends ListState {
  ListLoadingError({required this.error});

  final Object? error;

  @override
  List<Object?> get props => [error];
}
