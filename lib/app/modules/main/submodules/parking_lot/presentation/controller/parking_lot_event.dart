part of 'parking_lot_bloc.dart';

abstract class ParkingLotEvent extends Equatable {
  const ParkingLotEvent();
}

class ParkingLotLoadParkingEntityEvent extends ParkingLotEvent {
  const ParkingLotLoadParkingEntityEvent();

  @override
  List<Object?> get props => [];
}

class ParkingLotAddParkingEntityEvent extends ParkingLotEvent {
  final String code;

  const ParkingLotAddParkingEntityEvent({
    required this.code,
  });

  @override
  List<Object?> get props => [code];
}

class ParkingLotRemoveParkingEntityEvent extends ParkingLotEvent {
  final String parkingSpaceId;
  final int index;

  const ParkingLotRemoveParkingEntityEvent({
    required this.parkingSpaceId,
    required this.index,
  });

  @override
  List<Object?> get props => [
        parkingSpaceId,
        index,
      ];
}
