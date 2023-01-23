// Package imports:
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:flutter_parking_management/app/modules/main/submodules/parking_lot/data/data.dart';
import '../../../../../../../test_mocks.dart';
import '../../parking_lot_mocks.dart';

void main() {
  late ParkingLotRepositoryImpl parkingLotRepositoryImpl;
  late ParkingLotLocalDatasourceImpl parkingLotLocalDatasourceImpl;

  setUpAll(() {
    parkingLotLocalDatasourceImpl = MockParkingLotLocalDatasourceImpl();
    parkingLotRepositoryImpl = ParkingLotRepositoryImpl(parkingLotLocalDatasourceImpl);
  });

  group('[ParkingLotRepositoryImpl]', () {
    group(
      'when the [ParkingLotLocalDatasourceImpl] method [getListOfParkingLotSpace] is called',
      () {
        test(
          'and when the call is successfull, should return [Right] with [List<ParkingSpaceEntity>]',
          () async {
            //Arrange
            when(() => parkingLotLocalDatasourceImpl.getListOfParkingLotSpace()).thenAnswer(
              (_) async => parkingSpaceEntityListMock,
            );

            //Act
            final result = await parkingLotRepositoryImpl.getListOfParkingLotSpace();

            //Assert
            verify(() => parkingLotLocalDatasourceImpl.getListOfParkingLotSpace()).called(1);
            expect(result, const Right(parkingSpaceEntityListMock));
          },
        );

        test('and when the call is unsuccessfull, should return [Left] with a [Failure]', () async {
          //Arrange
          when(() => parkingLotLocalDatasourceImpl.getListOfParkingLotSpace())
              .thenThrow(exceptionMock);

          //Act
          final result = await parkingLotRepositoryImpl.getListOfParkingLotSpace();

          //Assert
          verify(() => parkingLotLocalDatasourceImpl.getListOfParkingLotSpace()).called(1);
          expect(result, Left(failureMock));
        });
      },
    );

    group('when the datasource method [saveParkingLotNewSpace] is called', () {
      test('and when the call is successfull, should return [Right] with [null]', () async {
        //Arrange
        when(() => parkingLotLocalDatasourceImpl.saveParkingLotNewSpace(parkingSpaceEntityMock))
            .thenAnswer((_) async => returnsNormally);

        //Act
        final result =
            await parkingLotRepositoryImpl.saveParkingLotNewSpace(parkingSpaceEntityMock);

        //Assert
        verify(
          () => parkingLotLocalDatasourceImpl.saveParkingLotNewSpace(parkingSpaceEntityMock),
        ).called(1);
        expect(result, const Right(null));
      });

      test('and when the call is unsuccessfull, should return [Left] with a [Failure]', () async {
        //Arrange
        when(() => parkingLotLocalDatasourceImpl.saveParkingLotNewSpace(parkingSpaceEntityMock))
            .thenThrow(exceptionMock);

        //Act
        final result =
            await parkingLotRepositoryImpl.saveParkingLotNewSpace(parkingSpaceEntityMock);

        //Assert
        verify(
          () => parkingLotLocalDatasourceImpl.saveParkingLotNewSpace(parkingSpaceEntityMock),
        ).called(1);
        expect(result, Left(failureMock));
      });
    });

    group('when the datasource method [removeParkingLotSpaceById] is called', () {
      test('and when the call is successfull, should return [Right] with [null]', () async {
        //Arrange
        when(() => parkingLotLocalDatasourceImpl.removeParkingLotSpaceById(
              parkingSpaceEntityMock.id,
            )).thenAnswer((_) async => returnsNormally);

        //Act
        final result =
            await parkingLotRepositoryImpl.removeParkingLotSpaceById(parkingSpaceEntityMock.id);

        //Assert
        verify(
          () => parkingLotLocalDatasourceImpl.removeParkingLotSpaceById(parkingSpaceEntityMock.id),
        ).called(1);
        expect(result, const Right(null));
      });

      test('and when the call is unsuccessfull, should return [Left] with a [Failure]', () async {
        //Arrange
        when(() =>
                parkingLotLocalDatasourceImpl.removeParkingLotSpaceById(parkingSpaceEntityMock.id))
            .thenThrow(exceptionMock);

        //Act
        final result =
            await parkingLotRepositoryImpl.removeParkingLotSpaceById(parkingSpaceEntityMock.id);

        //Assert
        verify(
          () => parkingLotLocalDatasourceImpl.removeParkingLotSpaceById(parkingSpaceEntityMock.id),
        ).called(1);
        expect(result, Left(failureMock));
      });
    });
  });
}
