import 'package:flutter/material.dart';

class VehicleEntrancePage extends StatelessWidget {
  static const routePath = '/veicle-entrance';

  const VehicleEntrancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(routePath),
      ),
    );
  }
}
