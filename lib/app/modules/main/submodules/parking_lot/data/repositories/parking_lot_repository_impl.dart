// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import '../../../../../core/utils/failures.dart';
import '../../domain/entities/parking_space_entity.dart';
import '../../domain/repositories/parking_lot_repository.dart';
import '../datasources/parking_lot_local_datasource.dart';

class ParkingLotRepositoryImpl implements ParkingLotRepository {
  final ParkingLotLocalDatasource _parkingLotLocalDatasource;

  ParkingLotRepositoryImpl(this._parkingLotLocalDatasource);

  @override
  Future<Either<Failure, void>> saveParkingLotNewSpace(
      ParkingSpaceEntity params) async {
    try {
      await _parkingLotLocalDatasource.saveParkingLotNewSpace(params);

      return const Right(null);
    } catch (error) {
      return Left(Failure(exception: error));
    }
  }

  @override
  Future<Either<Failure, List<ParkingSpaceEntity>?>>
      getListOfParkingLotSpace() async {
    try {
      final result =
          await _parkingLotLocalDatasource.getListOfParkingLotSpace();

      return Right(result);
    } catch (error) {
      return Left(Failure(exception: error));
    }
  }

  @override
  Future<Either<Failure, void>> removeParkingLotSpaceById(String id) async {
    try {
      await _parkingLotLocalDatasource.removeParkingLotSpaceById(id);

      return const Right(null);
    } catch (error) {
      return Left(Failure(exception: error));
    }
  }
}
