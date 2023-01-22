import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../design_system/design_system.dart';
import '../../main.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          bottom: TabBar(
            tabs: [
              ListTile(
                title: const Text('01'),
                onTap: () => Modular.to.navigate(MainModule.parkingLotPagePath),
              ),
              ListTile(
                title: const Text('02'),
                onTap: () => Modular.to.navigate(MainModule.vehicleEntrancePagePath),
              ),
              ListTile(
                title: const Text('03'),
                onTap: () => Modular.to.navigate(MainModule.vehicleExitPagePath),
              ),
            ],
          ),
        ),
        body: const RouterOutlet(),
      ),
    );
  }
}
