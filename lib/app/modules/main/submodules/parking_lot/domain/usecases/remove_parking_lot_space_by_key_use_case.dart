import 'package:dartz/dartz.dart';

import '../../../../../core/utils/failures.dart';
import '../repositories/parking_lot_repository.dart';

abstract class RemoveParkingLotSpaceByKeyUseCase {
  Future<Either<Failure, void>> call(String id);
}

class RemoveParkingLotSpaceByKeyUseCaseImpl implements RemoveParkingLotSpaceByKeyUseCase {
  final ParkingLotRepository _parkingLotRepository;

  RemoveParkingLotSpaceByKeyUseCaseImpl(this._parkingLotRepository);

  @override
  Future<Either<Failure, void>> call(String id) async {
    return _parkingLotRepository.removeParkingLotSpaceByKey(id);
  }
}
