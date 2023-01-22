import 'package:dartz/dartz.dart';

import '../../../../../core/utils/failures.dart';
import '../entities/parking_space_entity.dart';
import '../repositories/parking_lot_repository.dart';

abstract class SaveParkingLotNewSpaceUseCase {
  Future<Either<Failure, void>> call(ParkingSpaceEntity params);
}

class SaveParkingLotNewSpaceUseCaseImpl implements SaveParkingLotNewSpaceUseCase {
  final ParkingLotRepository _parkingLotRepository;

  SaveParkingLotNewSpaceUseCaseImpl(this._parkingLotRepository);

  @override
  Future<Either<Failure, void>> call(ParkingSpaceEntity params) async {
    return _parkingLotRepository.saveParkingLotNewSpace(params);
  }
}
