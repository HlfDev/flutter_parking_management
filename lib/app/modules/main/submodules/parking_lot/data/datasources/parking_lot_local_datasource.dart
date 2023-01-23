import '../../../../../core/services/interfaces/cache_service.dart';
import '../../../../../core/utils/hive_boxes.dart';
import '../../domain/entities/parking_space_entity.dart';

abstract class ParkingLotLocalDatasource {
  Future<void> saveParkingLotNewSpace(ParkingSpaceEntity params);
  Future<List<ParkingSpaceEntity>?> getListOfParkingLotSpace();
  Future<void> removeParkingLotSpaceById(String id);
}

class ParkingLotLocalDatasourceImpl implements ParkingLotLocalDatasource {
  final CacheService _cacheService;

  ParkingLotLocalDatasourceImpl(this._cacheService);

  @override
  Future<void> saveParkingLotNewSpace(ParkingSpaceEntity params) async {
    await _cacheService.register<ParkingSpaceEntity>(HiveBoxes.parkingSpaceEntityBox);

    _cacheService.set<ParkingSpaceEntity>(HiveBoxes.parkingSpaceEntityBox, params.id, params);
  }

  @override
  Future<List<ParkingSpaceEntity>?> getListOfParkingLotSpace() async {
    await _cacheService.register<ParkingSpaceEntity>(HiveBoxes.parkingSpaceEntityBox);

    return await _cacheService.getAll<ParkingSpaceEntity>(HiveBoxes.parkingSpaceEntityBox);
  }

  @override
  Future<void> removeParkingLotSpaceById(String id) async {
    await _cacheService.register<ParkingSpaceEntity>(HiveBoxes.parkingSpaceEntityBox);

    await _cacheService.remove<ParkingSpaceEntity>(HiveBoxes.parkingSpaceEntityBox, id);
  }
}
