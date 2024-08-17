part of 'editor_bloc.dart';

abstract class EditorEvent extends Equatable {}

class LoadEditor extends EditorEvent {
  LoadEditor({this.compliter, required this.wish});

  final Completer? compliter;
  final Wish wish;

  @override
  List<Object?> get props => [compliter];
}
