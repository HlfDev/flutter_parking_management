import 'package:dartz/dartz.dart';
import 'package:flutter_parking_management/app/modules/main/submodules/parking_lot/data/data.dart';

import 'package:flutter_parking_management/app/modules/main/submodules/parking_lot/domain/usecases/get_list_of_parking_lot_space_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../../../test_mocks.dart';
import '../../parking_lot_mocks.dart';

void main() {
  late GetListOfParkingLotSpaceUseCaseImpl getListOfParkingLotSpaceUseCaseImpl;
  late ParkingLotRepositoryImpl parkingLotRepositoryImpl;

  setUpAll(() {
    parkingLotRepositoryImpl = MockParkingLotRepositoryImpl();
    getListOfParkingLotSpaceUseCaseImpl = GetListOfParkingLotSpaceUseCaseImpl(
      parkingLotRepositoryImpl,
    );
  });

  group('[GetListOfParkingLotSpaceUseCaseImpl]', () {
    group(
      'when the call to [ParkingLotRepositoryImpl] method [getListOfParkingLotSpace] is successfull',
      () {
        test(
          'should return [Right] with a [List<ParkingSpaceEntity>]',
          () async {
            //Arrange
            when(() => parkingLotRepositoryImpl.getListOfParkingLotSpace())
                .thenAnswer((_) async => const Right(parkingSpaceEntityListMock));

            //Act
            final result = await getListOfParkingLotSpaceUseCaseImpl();

            //Assert
            verify(() => parkingLotRepositoryImpl.getListOfParkingLotSpace()).called(1);
            expect(result, const Right(parkingSpaceEntityListMock));
          },
        );
      },
    );

    group(
      'when the call to [ParkingLotRepositoryImpl] method [getListOfParkingLotSpace] is unsuccessfull',
      () {
        test('should return [Left] with a [Failure]', () async {
          //Arrange
          when(() => parkingLotRepositoryImpl.getListOfParkingLotSpace())
              .thenAnswer((_) async => Left(failureMock));

          //Act
          final result = await getListOfParkingLotSpaceUseCaseImpl();

          //Assert
          verify(() => parkingLotRepositoryImpl.getListOfParkingLotSpace()).called(1);
          expect(result, Left(failureMock));
        });
      },
    );
  });
}
