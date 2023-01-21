part of 'splash_bloc.dart';

abstract class SplashEvent {}

class SplashStartLoadEvent extends SplashEvent {
  SplashStartLoadEvent();
}

class SplashStopLoadEvent extends SplashEvent {
  SplashStopLoadEvent();
}
