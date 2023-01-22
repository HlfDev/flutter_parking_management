part of 'parking_lot_bloc.dart';

@immutable
abstract class ParkingLotState extends Equatable {
  const ParkingLotState([List props = const <dynamic>[]]) : super();
}

class ParkingLotInitialState extends ParkingLotState {
  const ParkingLotInitialState();

  @override
  List<Object?> get props => [];
}

extension ParkingLotStateHelper on ParkingLotState {
  bool get isParkingLotInitialState => runtimeType == ParkingLotInitialState;
}
