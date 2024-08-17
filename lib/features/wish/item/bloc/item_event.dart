part of 'item_bloc.dart';

abstract class ItemEvent extends Equatable {}

class LoadItem extends ItemEvent {
  LoadItem({required this.wishId, this.compliter});

  final Completer? compliter;
  final int wishId;

  @override
  List<Object?> get props => [compliter];
}
