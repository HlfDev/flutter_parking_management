part of 'splash_bloc.dart';

@immutable
abstract class SplashEvent extends Equatable {
  const SplashEvent([List props = const <dynamic>[]]) : super();
}

class SplashLoadingEvent extends SplashEvent {
  const SplashLoadingEvent();

  @override
  List<Object?> get props => [];
}

class SplashLoadingFinishedEvent extends SplashEvent {
  const SplashLoadingFinishedEvent();

  @override
  List<Object?> get props => [];
}
