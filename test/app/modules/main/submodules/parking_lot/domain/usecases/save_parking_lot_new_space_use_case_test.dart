import 'package:dartz/dartz.dart';
import 'package:flutter_parking_management/app/modules/main/submodules/parking_lot/data/data.dart';

import 'package:flutter_parking_management/app/modules/main/submodules/parking_lot/domain/usecases/save_parking_lot_new_space_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../../../test_mocks.dart';
import '../../parking_lot_mocks.dart';

void main() {
  late SaveParkingLotNewSpaceUseCaseImpl saveParkingLotNewSpaceUseCase;
  late ParkingLotRepositoryImpl parkingLotRepositoryImpl;

  setUpAll(() {
    parkingLotRepositoryImpl = MockParkingLotRepositoryImpl();
    saveParkingLotNewSpaceUseCase = SaveParkingLotNewSpaceUseCaseImpl(
      parkingLotRepositoryImpl,
    );
  });

  test(
    'when the call to [ParkingLotRepositoryImpl] method [saveParkingLotNewSpace] is successfull, should return [Right] with a [null]',
    () async {
      //Arrange
      when(() => parkingLotRepositoryImpl.saveParkingLotNewSpace(parkingSpaceEntityMock))
          .thenAnswer((_) async => const Right(null));

      //Act
      final result = await saveParkingLotNewSpaceUseCase(parkingSpaceEntityMock);

      //Assert
      verify(() => parkingLotRepositoryImpl.saveParkingLotNewSpace(parkingSpaceEntityMock))
          .called(1);
      expect(result, const Right(null));
    },
  );

  test(
    'when the call to [ParkingLotRepositoryImpl] method [saveParkingLotNewSpace] is unsuccessfull, should return [Left] with a [Failure]',
    () async {
      //Arrange
      when(() => parkingLotRepositoryImpl.saveParkingLotNewSpace(parkingSpaceEntityMock))
          .thenAnswer((_) async => Left(failureMock));

      //Act
      final result = await saveParkingLotNewSpaceUseCase(parkingSpaceEntityMock);

      //Assert
      verify(() => parkingLotRepositoryImpl.saveParkingLotNewSpace(parkingSpaceEntityMock))
          .called(1);
      expect(result, Left(failureMock));
    },
  );
}
