part of 'wish_item_bloc.dart';

abstract class WishItemState extends Equatable {}

class WishItemInitial extends WishItemState {
  @override
  List<Object?> get props => [];
}

class WishItemLoading extends WishItemState {
  @override
  List<Object?> get props => [];
}

class WishItemLoaded extends WishItemState {
  WishItemLoaded({required this.wishItem});

  final Wish wishItem;

  @override
  List<Object?> get props => [wishItem];
}

class WishItemLoadingError extends WishItemState {
  WishItemLoadingError({required this.error});

  final Object? error;

  @override
  List<Object?> get props => [error];
}
