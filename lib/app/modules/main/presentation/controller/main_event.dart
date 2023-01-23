part of 'main_bloc.dart';

@immutable
abstract class MainEvent extends Equatable {
  const MainEvent([List props = const <dynamic>[]]) : super();
}

class ChangeCurrentPageEvent extends MainEvent {
  final int index;
  const ChangeCurrentPageEvent({required this.index});

  @override
  List<Object?> get props => [];
}
