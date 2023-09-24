// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
// Project imports:
import 'package:flutter_parking_management/app/modules/main/submodules/parking_lot/domain/domain.dart';
import 'package:flutter_parking_management/app/modules/main/submodules/parking_lot/presentation/controller/controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../../../test_mocks.dart';
import '../../parking_lot_mocks.dart';

void main() {
  late ParkingLotBloc parkingLotBloc;
  late GetListOfParkingLotSpaceUseCaseImpl getListOfParkingLotSpaceUseCaseImpl;
  late RemoveParkingLotSpaceByIdUseCaseImpl
      removeParkingLotSpaceByKeyUseCaseImpl;
  late SaveParkingLotNewSpaceUseCaseImpl saveParkingLotNewSpaceUseCaseImpl;

  setUp(() {
    getListOfParkingLotSpaceUseCaseImpl =
        MockGetListOfParkingLotSpaceUseCaseImpl();
    removeParkingLotSpaceByKeyUseCaseImpl =
        MockRemoveParkingLotSpaceByKeyUseCaseImpl();
    saveParkingLotNewSpaceUseCaseImpl = MockSaveParkingLotNewSpaceUseCaseImpl();

    parkingLotBloc = ParkingLotBloc(
      getListOfParkingLotSpaceUseCase: getListOfParkingLotSpaceUseCaseImpl,
      removeParkingLotSpaceByKeyUseCase: removeParkingLotSpaceByKeyUseCaseImpl,
      saveParkingLotNewSpaceUseCase: saveParkingLotNewSpaceUseCaseImpl,
    );

    registerFallbackValue(
      const ParkingSpaceEntity(code: '', id: '', inUse: false),
    );
  });

  tearDown(() {
    parkingLotBloc.close();
  });

  test('should [ParkingLotState] start with [ParkingLotInitialState]', () {
    // Assert
    expect(parkingLotBloc.state, equals(ParkingLotInitialState()));
  });

  blocTest(
    'should emit respectively [ParkingLotLoadingState, ParkingLotSuccessState] after add [ParkingLotLoadParkingEntityEvent]',
    build: () {
      when(() => getListOfParkingLotSpaceUseCaseImpl())
          .thenAnswer((_) async => const Right([]));

      return parkingLotBloc;
    },
    act: (bloc) {
      bloc.add(const ParkingLotLoadParkingEntityEvent());
    },
    expect: () => [
      ParkingLotLoadingState(),
      const ParkingLotSuccessState(parkingSpaceEntityList: []),
    ],
  );

  blocTest(
    'should emit respectively [ParkingLotLoadingState, ParkingLotSuccessState] after add [ParkingLotAddParkingEntityEvent]',
    build: () {
      when(() => getListOfParkingLotSpaceUseCaseImpl())
          .thenAnswer((_) async => const Right([]));
      when(() => saveParkingLotNewSpaceUseCaseImpl(any())).thenAnswer(
        (_) async => const Right(null),
      );

      return parkingLotBloc;
    },
    act: (bloc) {
      bloc.add(
        ParkingLotAddParkingEntityEvent(code: parkingSpaceEntityMock.code),
      );
    },
    expect: () => [
      ParkingLotLoadingState(),
      const ParkingLotSuccessState(parkingSpaceEntityList: []),
    ],
  );

  blocTest(
    'should emit respectively [ParkingLotLoadingState, ParkingLotSuccessState] after add [ParkingLotRemoveParkingEntityEvent]',
    build: () {
      when(() => getListOfParkingLotSpaceUseCaseImpl())
          .thenAnswer((_) async => const Right([]));
      when(() => removeParkingLotSpaceByKeyUseCaseImpl(any())).thenAnswer(
        (_) async => const Right(null),
      );

      return parkingLotBloc;
    },
    act: (bloc) {
      bloc.add(ParkingLotRemoveParkingEntityEvent(
        index: 0,
        parkingSpaceId: parkingSpaceEntityMock.id,
      ));
    },
    expect: () => [
      ParkingLotLoadingState(),
      const ParkingLotSuccessState(parkingSpaceEntityList: []),
    ],
  );

  blocTest(
    'should emit respectively [ParkingLotLoadingState, ParkingLotFailureState] after add [ParkingLotLoadParkingEntityEvent]',
    build: () {
      when(() => getListOfParkingLotSpaceUseCaseImpl())
          .thenAnswer((_) async => Left(failureMock));

      return parkingLotBloc;
    },
    act: (bloc) {
      bloc.add(const ParkingLotLoadParkingEntityEvent());
    },
    expect: () => [
      ParkingLotLoadingState(),
      ParkingLotFailureState(),
    ],
  );

  blocTest(
    'should emit [ParkingLotFailureState] after add [ParkingLotAddParkingEntityEvent]',
    build: () {
      when(() => saveParkingLotNewSpaceUseCaseImpl(any())).thenAnswer(
        (_) async => Left(failureMock),
      );

      return parkingLotBloc;
    },
    act: (bloc) {
      bloc.add(const ParkingLotAddParkingEntityEvent(code: '123'));
    },
    expect: () => [ParkingLotFailureState()],
  );

  blocTest(
    'should emit [ParkingLotFailureState] after add [ParkingLotRemoveParkingEntityEvent]',
    build: () {
      when(() => removeParkingLotSpaceByKeyUseCaseImpl(any())).thenAnswer(
        (_) async => Left(failureMock),
      );

      return parkingLotBloc;
    },
    act: (bloc) {
      bloc.add(const ParkingLotRemoveParkingEntityEvent(
        index: 0,
        parkingSpaceId: '',
      ));
    },
    expect: () => [ParkingLotFailureState()],
  );
}
