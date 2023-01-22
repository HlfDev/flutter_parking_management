import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controller/parking_lot_bloc.dart';

class ParkingLotPage extends StatefulWidget {
  static const routePath = '/parking-lot';
  const ParkingLotPage({super.key});

  @override
  State<ParkingLotPage> createState() => _ParkingLotPageState();
}

class _ParkingLotPageState extends State<ParkingLotPage> {
  final ParkingLotBloc _parkingLotBloc = Modular.get<ParkingLotBloc>();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text(ParkingLotPage.routePath)),
    );
  }
}
