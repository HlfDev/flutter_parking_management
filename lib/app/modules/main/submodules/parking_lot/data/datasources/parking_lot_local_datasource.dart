import '../../../../../core/services/interfaces/cache_service.dart';
import '../../../../../core/utils/hive_boxes.dart';
import '../../domain/entities/parking_space_entity.dart';

abstract class ParkingLotLocalDatasource {
  Future<void> saveParkingLotNewSpace(ParkingSpaceEntity params);
}

class ParkingLotLocalDatasourceImpl implements ParkingLotLocalDatasource {
  final CacheService _cacheService;

  ParkingLotLocalDatasourceImpl(this._cacheService);

  @override
  Future<void> saveParkingLotNewSpace(ParkingSpaceEntity params) async {
    await _cacheService.register(HiveBoxes.parkingSpaceEntityBox);

    _cacheService.set(
      HiveBoxes.parkingSpaceEntityBox,
      params.id,
      params,
    );
  }
}
