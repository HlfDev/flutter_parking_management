part of 'splash_bloc.dart';

abstract class SplashState {
  final bool isLoaded;

  SplashState({this.isLoaded = false});
}

class SplashInitialState extends SplashState {
  SplashInitialState();
}

class SplashStartLoadState extends SplashState {
  SplashStartLoadState();
}

class SplashStopLoadState extends SplashState {
  SplashStopLoadState({required super.isLoaded});
}
