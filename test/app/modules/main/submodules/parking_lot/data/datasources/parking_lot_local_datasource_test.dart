import 'package:flutter_parking_management/app/modules/core/services/interfaces/interfaces.dart';
import 'package:flutter_parking_management/app/modules/main/submodules/parking_lot/data/data.dart';
import 'package:flutter_parking_management/app/modules/main/submodules/parking_lot/domain/domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../../../test_mocks.dart';
import '../../parking_lot_mocks.dart';

class MockCacheService extends Mock implements CacheService {}

void main() {
  late ParkingLotLocalDatasourceImpl parkingLotLocalDatasourceImpl;
  late CacheService cacheService;

  setUpAll(() {
    cacheService = MockCacheService();
    parkingLotLocalDatasourceImpl = ParkingLotLocalDatasourceImpl(cacheService);

    when(() => cacheService.register<ParkingSpaceEntity>(any()))
        .thenAnswer((_) async => returnsNormally);
  });

  group('ParkingLotLocalDatasourceImpl', () {
    group('when [getListOfParkingLotSpace] function is called, ', () {
      group('and when the call to [CacheService] is successfull', () {
        test('should return a [List<ParkingSpaceEntity>]', () async {
          //Arrange
          when(() => cacheService.getAll<ParkingSpaceEntity>(any())).thenAnswer(
            (_) async => parkingSpaceEntityListMock,
          );

          //Act
          final result = await parkingLotLocalDatasourceImpl.getListOfParkingLotSpace();

          //Assert
          expect(result, isA<List<ParkingSpaceEntity>>());
        });

        group('when the call to [CacheService] is unsuccessfull', () {
          test('should throw a [Exception]', () {
            //Arrange
            when(() => cacheService.getAll<ParkingSpaceEntity>(any())).thenThrow(exceptionMock);

            //Act
            final result = parkingLotLocalDatasourceImpl.getListOfParkingLotSpace();

            //Assert
            expect(result, throwsA(isA<Exception>()));
          });
        });
      });
    });

    group('when [saveParkingLotNewSpace] function is called, ', () {
      group('and when the call to [CacheService] is successfull', () {
        test('should return a [null]', () async {
          //Arrange
          when(() => cacheService.set<ParkingSpaceEntity>(any(), any(), any())).thenAnswer(
            (_) async => returnsNormally,
          );

          //Act
          final result =
              parkingLotLocalDatasourceImpl.saveParkingLotNewSpace(parkingSpaceEntityMock);

          //Assert
          expect(result, isA<Future<void>>());
        });

        group('when the call to [CacheService] is unsuccessfull', () {
          test('should throw a [Exception]', () {
            //Arrange
            when(() => cacheService.set<ParkingSpaceEntity>(any(), any(), any()))
                .thenThrow(exceptionMock);

            //Act
            final result =
                parkingLotLocalDatasourceImpl.saveParkingLotNewSpace(parkingSpaceEntityMock);

            //Assert
            expect(result, throwsA(isA<Exception>()));
          });
        });
      });
    });

    group('when [removeParkingLotSpaceById] function is called, ', () {
      group('and when the call to [CacheService] is successfull', () {
        test('should return a [null]', () async {
          //Arrange
          when(() => cacheService.remove<ParkingSpaceEntity>(any(), any())).thenAnswer(
            (_) async => returnsNormally,
          );

          //Act
          final result =
              parkingLotLocalDatasourceImpl.removeParkingLotSpaceById(parkingSpaceEntityMock.id);

          //Assert
          expect(result, isA<Future<void>>());
        });

        group('when the call to [CacheService] is unsuccessfull', () {
          test('should throw a [Exception]', () {
            //Arrange
            when(() => cacheService.remove<ParkingSpaceEntity>(any(), any()))
                .thenThrow(exceptionMock);

            //Act
            final result =
                parkingLotLocalDatasourceImpl.removeParkingLotSpaceById(parkingSpaceEntityMock.id);

            //Assert
            expect(result, throwsA(isA<Exception>()));
          });
        });
      });
    });
  });
}
