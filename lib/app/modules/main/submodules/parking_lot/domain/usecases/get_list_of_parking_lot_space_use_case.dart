// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import '../../../../../core/utils/failures.dart';
import '../entities/parking_space_entity.dart';
import '../repositories/parking_lot_repository.dart';

abstract class GetListOfParkingLotSpaceUseCase {
  Future<Either<Failure, void>> call();
}

class GetListOfParkingLotSpaceUseCaseImpl
    implements GetListOfParkingLotSpaceUseCase {
  final ParkingLotRepository _parkingLotRepository;

  GetListOfParkingLotSpaceUseCaseImpl(this._parkingLotRepository);

  @override
  Future<Either<Failure, List<ParkingSpaceEntity>?>> call() async {
    return _parkingLotRepository.getListOfParkingLotSpace();
  }
}
