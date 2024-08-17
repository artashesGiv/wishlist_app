part of 'list_bloc.dart';

abstract class ListEvent extends Equatable {}

class LoadList extends ListEvent {
  LoadList({this.compliter});

  final Completer? compliter;

  @override
  List<Object?> get props => [compliter];
}
