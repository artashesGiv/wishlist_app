part of 'wish_list_bloc.dart';

abstract class WishListEvent extends Equatable {}

class LoadWishList extends WishListEvent {
  LoadWishList({this.compliter});

  final Completer? compliter;

  @override
  List<Object?> get props => [compliter];
}
