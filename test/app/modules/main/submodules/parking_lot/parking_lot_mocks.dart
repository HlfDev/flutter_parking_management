// Package imports:
import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:flutter_parking_management/app/modules/main/submodules/parking_lot/domain/domain.dart';
import 'package:flutter_parking_management/app/modules/main/submodules/parking_lot/data/data.dart';

class MockGetListOfParkingLotSpaceUseCaseImpl extends Mock
    implements GetListOfParkingLotSpaceUseCaseImpl {}

class MockRemoveParkingLotSpaceByKeyUseCaseImpl extends Mock
    implements RemoveParkingLotSpaceByKeyUseCaseImpl {}

class MockSaveParkingLotNewSpaceUseCaseImpl extends Mock
    implements SaveParkingLotNewSpaceUseCaseImpl {}

class MockParkingLotRepositoryImpl extends Mock implements ParkingLotRepositoryImpl {}

class MockParkingLotLocalDatasourceImpl extends Mock implements ParkingLotLocalDatasourceImpl {}

const ParkingSpaceEntity parkingSpaceEntityMock = ParkingSpaceEntity(
  code: '',
  id: '',
  inUse: false,
);

const List<ParkingSpaceEntity> parkingSpaceEntityListMock = [
  parkingSpaceEntityMock,
  parkingSpaceEntityMock,
];
