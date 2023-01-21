part of 'splash_bloc.dart';

abstract class SplashState {}

class SplashInitialState extends SplashState {
  SplashInitialState();
}

class SplashLoadingState extends SplashState {
  SplashLoadingState();
}

class SplashLoadedState extends SplashState {
  SplashLoadedState();
}

extension SplashStateHelper on SplashState {
  bool get isSplashInitialState => runtimeType == SplashInitialState;
  bool get isSplashLoadingState => runtimeType == SplashLoadingState;
  bool get isSplashLoadedState => runtimeType == SplashLoadedState;
}
