part of 'wish_item_bloc.dart';

abstract class WishItemEvent extends Equatable {}

class LoadWishItem extends WishItemEvent {
  LoadWishItem({required this.wishId, this.compliter});

  final Completer? compliter;
  final int wishId;

  @override
  List<Object?> get props => [compliter];
}
