part of 'item_bloc.dart';

abstract class ItemState extends Equatable {}

class ItemInitial extends ItemState {
  @override
  List<Object?> get props => [];
}

class ItemLoading extends ItemState {
  @override
  List<Object?> get props => [];
}

class ItemLoaded extends ItemState {
  ItemLoaded({required this.wishItem});

  final Wish wishItem;

  @override
  List<Object?> get props => [wishItem];
}

class ItemLoadingError extends ItemState {
  ItemLoadingError({required this.error});

  final Object? error;

  @override
  List<Object?> get props => [error];
}
