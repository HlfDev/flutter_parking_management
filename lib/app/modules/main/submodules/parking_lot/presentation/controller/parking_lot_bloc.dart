// Package imports:
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

// Project imports:
import '../../domain/domain.dart';

// Project imports:
part 'parking_lot_event.dart';
part 'parking_lot_state.dart';

class ParkingLotBloc extends Bloc<ParkingLotEvent, ParkingLotState> {
  final SaveParkingLotNewSpaceUseCase _saveParkingLotNewSpaceUseCase;
  final GetListOfParkingLotSpaceUseCase _getListOfParkingLotSpaceUseCase;
  final RemoveParkingLotSpaceByKeyUseCase _removeParkingLotSpaceByIdUseCase;

  ParkingLotBloc({
    required SaveParkingLotNewSpaceUseCase saveParkingLotNewSpaceUseCase,
    required GetListOfParkingLotSpaceUseCase getListOfParkingLotSpaceUseCase,
    required RemoveParkingLotSpaceByKeyUseCase
        removeParkingLotSpaceByKeyUseCase,
  })  : _saveParkingLotNewSpaceUseCase = saveParkingLotNewSpaceUseCase,
        _getListOfParkingLotSpaceUseCase = getListOfParkingLotSpaceUseCase,
        _removeParkingLotSpaceByIdUseCase = removeParkingLotSpaceByKeyUseCase,
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

    final result = await _getListOfParkingLotSpaceUseCase();

    result.fold(
      (failure) => emit(ParkingLotFailureState()),
      (parkingSpaceEntityList) => emit(
        ParkingLotSuccessState(
          parkingSpaceEntityList: parkingSpaceEntityList,
        ),
      ),
    );
  }

  Future<void> _saveParkingLotNewSpace(
    ParkingLotAddParkingEntityEvent event,
    Emitter<ParkingLotState> emit,
  ) async {
    final result = await _saveParkingLotNewSpaceUseCase(
      ParkingSpaceEntity(
        id: const Uuid().v4(),
        code: event.code,
        inUse: false,
      ),
    );

    result.fold(
      (failure) => emit(ParkingLotFailureState()),
      (_) {
        add(const ParkingLotLoadParkingEntityEvent());
      },
    );
  }

  Future<void> _removeParkingLotSpaceById(
    ParkingLotRemoveParkingEntityEvent event,
    Emitter<ParkingLotState> emit,
  ) async {
    final result =
        await _removeParkingLotSpaceByIdUseCase(event.parkingSpaceId);

    result.fold(
      (failure) => emit(ParkingLotFailureState()),
      (_) {
        add(const ParkingLotLoadParkingEntityEvent());
      },
    );
  }
}
