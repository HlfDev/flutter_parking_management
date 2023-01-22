// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

import 'main.dart';
import 'submodules/submodules.dart';

class MainModule extends Module {
  static const moduleName = '/main';

  static const parkingLotPagePath = '$moduleName${ParkingLotPage.routePath}';
  static const vehicleEntrancePagePath = '$moduleName${VehicleEntrancePage.routePath}';
  static const vehicleExitPagePath = '$moduleName${VehicleExitPage.routePath}';

  @override
  List<Module> get imports => [
        ParkingLotModule(),
        VehicleEntranceModule(),
        VehicleExitModule(),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (context, args) => const MainPage(),
      children: [
        ChildRoute(
          ParkingLotPage.routePath,
          child: (context, args) => const ParkingLotPage(),
        ),
        ChildRoute(
          VehicleEntrancePage.routePath,
          child: (context, args) => const VehicleEntrancePage(),
        ),
        ChildRoute(
          VehicleExitPage.routePath,
          child: (context, args) => const VehicleExitPage(),
        ),
      ],
    ),
  ];
}
