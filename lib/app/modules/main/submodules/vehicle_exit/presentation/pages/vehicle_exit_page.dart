// Flutter imports:
import 'package:flutter/material.dart';

class VehicleExitPage extends StatelessWidget {
  static const routePath = '/vehicle-exit';

  const VehicleExitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(routePath),
      ),
    );
  }
}
