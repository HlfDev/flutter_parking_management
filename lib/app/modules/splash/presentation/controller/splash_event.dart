part of 'splash_bloc.dart';

abstract class SplashEvent {}

class SplasLoadingEvent extends SplashEvent {
  SplasLoadingEvent();
}

class SplashLoadingFinishedEvent extends SplashEvent {
  SplashLoadingFinishedEvent();
}
