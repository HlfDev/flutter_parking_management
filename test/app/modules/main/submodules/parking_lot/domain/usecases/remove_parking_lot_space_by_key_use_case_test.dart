import 'package:dartz/dartz.dart';
import 'package:flutter_parking_management/app/modules/main/submodules/parking_lot/data/data.dart';

import 'package:flutter_parking_management/app/modules/main/submodules/parking_lot/domain/usecases/remove_parking_lot_space_by_key_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../../../test_mocks.dart';
import '../../parking_lot_mocks.dart';

void main() {
  late RemoveParkingLotSpaceByKeyUseCaseImpl removeParkingLotSpaceByKeyUseCaseImpl;
  late ParkingLotRepositoryImpl parkingLotRepositoryImpl;

  setUpAll(() {
    parkingLotRepositoryImpl = MockParkingLotRepositoryImpl();
    removeParkingLotSpaceByKeyUseCaseImpl = RemoveParkingLotSpaceByKeyUseCaseImpl(
      parkingLotRepositoryImpl,
    );
  });

  group('[RemoveParkingLotSpaceByKeyUseCaseImpl]', () {
    group(
      'when the call to [ParkingLotRepositoryImpl] method [removeParkingLotSpaceByKey] is successfull',
      () {
        test(
          'should return [Right] with a [null]',
          () async {
            //Arrange
            when(() => parkingLotRepositoryImpl.removeParkingLotSpaceByKey(''))
                .thenAnswer((_) async => const Right(null));

            //Act
            final result = await removeParkingLotSpaceByKeyUseCaseImpl('');

            //Assert
            verify(() => parkingLotRepositoryImpl.removeParkingLotSpaceByKey('')).called(1);
            expect(result, const Right(null));
          },
        );
      },
    );

    group(
      'when the call to [ParkingLotRepositoryImpl] method [removeParkingLotSpaceByKey] is unsuccessfull',
      () {
        test('should return [Left] with a [Failure]', () async {
          //Arrange
          when(() => parkingLotRepositoryImpl.removeParkingLotSpaceByKey(''))
              .thenAnswer((_) async => Left(failureMock));

          //Act
          final result = await removeParkingLotSpaceByKeyUseCaseImpl('');

          //Assert
          verify(() => parkingLotRepositoryImpl.removeParkingLotSpaceByKey('')).called(1);
          expect(result, Left(failureMock));
        });
      },
    );
  });
}
