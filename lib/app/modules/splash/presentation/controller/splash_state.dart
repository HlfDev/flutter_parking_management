part of 'splash_bloc.dart';

abstract class SplashState {}

class SplashInitialState extends SplashState {
  SplashInitialState();
}

class SplashLoadingState extends SplashState {
  SplashLoadingState();
}

extension SplashStateHelper on SplashState {
  bool get isSplashInitialState => runtimeType == SplashInitialState;
  bool get isSplashLoadingState => runtimeType == SplashLoadingState;
}
