// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import '../../../../../core/utils/failures.dart';
import '../repositories/parking_lot_repository.dart';

abstract class RemoveParkingLotSpaceByKeyUseCase {
  Future<Either<Failure, void>> call(String id);
}

class RemoveParkingLotSpaceByIdUseCaseImpl
    implements RemoveParkingLotSpaceByKeyUseCase {
  final ParkingLotRepository _parkingLotRepository;

  RemoveParkingLotSpaceByIdUseCaseImpl(this._parkingLotRepository);

  @override
  Future<Either<Failure, void>> call(String id) async {
    return _parkingLotRepository.removeParkingLotSpaceById(id);
  }
}
