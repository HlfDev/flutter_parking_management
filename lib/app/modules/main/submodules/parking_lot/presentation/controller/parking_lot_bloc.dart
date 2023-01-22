// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
part 'parking_lot_event.dart';
part 'parking_lot_state.dart';

class ParkingLotBloc extends Bloc<ParkingLotEvent, ParkingLotState> with Disposable {
  ParkingLotBloc() : super(const ParkingLotInitialState());

  @override
  void dispose() {
    super.close();
  }
}
