part of 'wish_list_bloc.dart';

abstract class WishListState extends Equatable {}

class WishListInitial extends WishListState {
  @override
  List<Object?> get props => [];
}

class WishListLoading extends WishListState {
  @override
  List<Object?> get props => [];
}

class WishListLoaded extends WishListState {
  WishListLoaded({required this.wishList});

  final List<Wish> wishList;

  @override
  List<Object?> get props => [wishList];
}

class WishListLoadingError extends WishListState {
  WishListLoadingError({required this.error});

  final Object? error;

  @override
  List<Object?> get props => [error];
}
