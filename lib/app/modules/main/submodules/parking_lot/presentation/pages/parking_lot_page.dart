import 'package:flutter/material.dart';

class ParkingLotPage extends StatelessWidget {
  static const routePath = '/parking-lot';
  const ParkingLotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(routePath),
      ),
    );
  }
}
