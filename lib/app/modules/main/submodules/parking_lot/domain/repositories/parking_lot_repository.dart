import 'package:dartz/dartz.dart';

import '../../../../../core/utils/failures.dart';
import '../entities/parking_space_entity.dart';

abstract class ParkingLotRepository {
  Future<Either<Failure, void>> saveParkingLotNewSpace(ParkingSpaceEntity params);
}
