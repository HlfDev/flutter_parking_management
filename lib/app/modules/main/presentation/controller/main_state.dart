part of 'main_bloc.dart';

@immutable
abstract class MainState extends Equatable {
  const MainState([List props = const <dynamic>[]]) : super();
}

class MainInitialState extends MainState {
  const MainInitialState();

  @override
  List<Object?> get props => [];
}

extension SplashStateHelper on MainState {
  bool get isMainInitialState => runtimeType == MainInitialState;
}
