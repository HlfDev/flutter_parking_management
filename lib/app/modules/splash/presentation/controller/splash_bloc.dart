import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../app.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> with Disposable {
  final AppNavigator _appNavigator;

  SplashBloc(this._appNavigator) : super(const SplashInitialState()) {
    on<SplashLoadingEvent>((event, emit) => emit(const SplashLoadingState()));
    on<SplashLoadingFinishedEvent>((event, emit) => emit(const SplashLoadedState()));
  }

  void navigateToMainModule() => _appNavigator.navigateToMainModule();

  @override
  void dispose() {
    super.close();
  }
}
