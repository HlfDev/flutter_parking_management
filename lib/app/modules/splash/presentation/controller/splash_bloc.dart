// Flutter imports:
// Package imports:
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

// Project imports:
import '../../../../app.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final AppNavigator _appNavigator;

  SplashBloc(this._appNavigator) : super(const SplashInitialState()) {
    on<SplashLoadingEvent>((event, emit) => emit(const SplashLoadingState()));
    on<SplashLoadingFinishedEvent>(
        (event, emit) => emit(const SplashLoadedState()));
  }

  void navigateToMainModule() =>
      _appNavigator.navigateToMainModuleParkingLotPage();
}
