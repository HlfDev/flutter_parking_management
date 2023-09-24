// Flutter imports:
// Package imports:
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

// Project imports:
import '../../../../app.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final AppNavigator _appNavigator;

  MainBloc(this._appNavigator) : super(const MainInitialState()) {
    on<ChangeCurrentPageEvent>((event, emit) => _onChangeTab(event.index));
  }

  void _onChangeTab(int index) {
    switch (index) {
      case 0:
        _appNavigator.navigateToMainModuleParkingLotPage();
        return;

      case 1:
        _appNavigator.navigateToMainModuleVehicleEntrancePage();
        return;
      case 2:
        _appNavigator.navigateToMainModuleVehicleExitPage();
        return;
    }
  }
}
