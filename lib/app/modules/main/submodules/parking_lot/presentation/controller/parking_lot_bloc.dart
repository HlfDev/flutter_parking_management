// Package imports:
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';
import 'dart:math';

import '../../domain/domain.dart';

// Project imports:
part 'parking_lot_event.dart';
part 'parking_lot_state.dart';

class ParkingLotBloc extends Bloc<ParkingLotEvent, ParkingLotState> {
  final SaveParkingLotNewSpaceUseCaseImpl _saveParkingLotNewSpaceUseCaseImpl;
  final GetListOfParkingLotSpaceUseCaseImpl _getListOfParkingLotSpaceUseCaseImpl;
  final RemoveParkingLotSpaceByKeyUseCaseImpl _removeParkingLotSpaceByIdUseCaseImpl;

  ParkingLotBloc({
    required SaveParkingLotNewSpaceUseCaseImpl saveParkingLotNewSpaceUseCaseImpl,
    required GetListOfParkingLotSpaceUseCaseImpl getListOfParkingLotSpaceUseCaseImpl,
    required RemoveParkingLotSpaceByKeyUseCaseImpl removeParkingLotSpaceByKeyUseCaseImpl,
  })  : _saveParkingLotNewSpaceUseCaseImpl = saveParkingLotNewSpaceUseCaseImpl,
        _getListOfParkingLotSpaceUseCaseImpl = getListOfParkingLotSpaceUseCaseImpl,
        _removeParkingLotSpaceByIdUseCaseImpl = removeParkingLotSpaceByKeyUseCaseImpl,
        super(ParkingLotInitialState()) {
    on<ParkingLotLoadParkingEntityEvent>(
      (event, emit) => _getListOfParkingLotSpace(event, emit),
    );
    on<ParkingLotAddParkingEntityEvent>(
      (event, emit) => _saveParkingLotNewSpace(event, emit),
    );
    on<ParkingLotRemoveParkingEntityEvent>(
      (event, emit) => _removeParkingLotSpaceById(event, emit),
    );
  }

  Future<void> _getListOfParkingLotSpace(
    ParkingLotLoadParkingEntityEvent event,
    Emitter<ParkingLotState> emit,
  ) async {
    emit(ParkingLotLoadingState());

    final result = await _getListOfParkingLotSpaceUseCaseImpl();

    result.fold(
      (failure) => emit(ParkingLotFailureState()),
      (parkingSpaceEntityList) => emit(ParkingLotSuccessState(
        parkingSpaceEntityList: parkingSpaceEntityList,
      )),
    );
  }

  Future<void> _saveParkingLotNewSpace(
    ParkingLotAddParkingEntityEvent event,
    Emitter<ParkingLotState> emit,
  ) async {
    await _saveParkingLotNewSpaceUseCaseImpl(
      ParkingSpaceEntity(
        id: const Uuid().v4(),
        code: event.code,
        isUse: false,
      ),
    );

    add(const ParkingLotLoadParkingEntityEvent());
  }

  Future<void> _removeParkingLotSpaceById(
    ParkingLotRemoveParkingEntityEvent event,
    Emitter<ParkingLotState> emit,
  ) async {
    final result = await _removeParkingLotSpaceByIdUseCaseImpl(event.parkingSpaceId);

    result.fold(
      (failure) => emit(ParkingLotFailureState()),
      (_) {
        add(const ParkingLotLoadParkingEntityEvent());
      },
    );
  }
}
