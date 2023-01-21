part of 'splash_bloc.dart';

@immutable
abstract class SplashState extends Equatable {
  const SplashState([List props = const <dynamic>[]]) : super();
}

class SplashInitialState extends SplashState {
  const SplashInitialState();

  @override
  List<Object?> get props => [];
}

class SplashLoadingState extends SplashState {
  const SplashLoadingState();

  @override
  List<Object?> get props => [];
}

class SplashLoadedState extends SplashState {
  const SplashLoadedState();

  @override
  List<Object?> get props => [];
}

extension SplashStateHelper on SplashState {
  bool get isSplashInitialState => runtimeType == SplashInitialState;
  bool get isSplashLoadingState => runtimeType == SplashLoadingState;
  bool get isSplashLoadedState => runtimeType == SplashLoadedState;
}
