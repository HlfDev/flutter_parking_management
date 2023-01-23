part of 'parking_lot_bloc.dart';

abstract class ParkingLotState extends Equatable {
  final List<ParkingSpaceEntity>? parkingSpaceEntityList;

  const ParkingLotState({required this.parkingSpaceEntityList});
}

class ParkingLotInitialState extends ParkingLotState {
  ParkingLotInitialState() : super(parkingSpaceEntityList: []);

  @override
  List<Object?> get props => [];
}

class ParkingLotLoadingState extends ParkingLotState {
  ParkingLotLoadingState() : super(parkingSpaceEntityList: []);

  @override
  List<Object?> get props => [];
}

class ParkingLotSuccessState extends ParkingLotState {
  const ParkingLotSuccessState({
    required List<ParkingSpaceEntity>? parkingSpaceEntityList,
  }) : super(parkingSpaceEntityList: parkingSpaceEntityList);

  @override
  List<Object?> get props => [];
}

class ParkingLotFailureState extends ParkingLotState {
  ParkingLotFailureState() : super(parkingSpaceEntityList: []);

  @override
  List<Object?> get props => [];
}

extension ParkingLotStateHelper on ParkingLotState {
  bool get isParkingLotInitialState => runtimeType == ParkingLotInitialState;
  bool get isParkingLotLoadingState => runtimeType == ParkingLotLoadingState;
  bool get isParkingLotSuccessState => runtimeType == ParkingLotSuccessState;
  bool get isParkingLotFailureState => runtimeType == ParkingLotFailureState;

  bool analyseIfExistsCode(String code) {
    if (parkingSpaceEntityList == null) return false;

    return parkingSpaceEntityList!.any((existCode) => existCode.code == code);
  }
}
