import 'package:dartz/dartz.dart';

import '../../../../../core/utils/failures.dart';
import '../../domain/entities/parking_space_entity.dart';
import '../../domain/repositories/parking_lot_repository.dart';
import '../datasources/parking_lot_local_datasource.dart';

class ParkingLotRepositoryImpl implements ParkingLotRepository {
  final ParkingLotLocalDatasource _parkingLotLocalDatasource;

  ParkingLotRepositoryImpl(this._parkingLotLocalDatasource);

  @override
  Future<Either<Failure, void>> saveParkingLotNewSpace(ParkingSpaceEntity params) async {
    try {
      await _parkingLotLocalDatasource.saveParkingLotNewSpace(params);

      return const Right(null);
    } catch (_) {
      return Left(Failure(Exception()));
    }
  }
}
