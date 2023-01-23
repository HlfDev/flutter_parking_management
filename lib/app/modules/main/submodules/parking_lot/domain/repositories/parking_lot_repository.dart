// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import '../../../../../core/utils/failures.dart';
import '../entities/parking_space_entity.dart';

abstract class ParkingLotRepository {
  Future<Either<Failure, void>> saveParkingLotNewSpace(ParkingSpaceEntity params);
  Future<Either<Failure, List<ParkingSpaceEntity>?>> getListOfParkingLotSpace();
  Future<Either<Failure, void>> removeParkingLotSpaceById(String id);
}
