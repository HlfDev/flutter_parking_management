// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
import 'main.dart';
import 'presentation/controller/main_bloc.dart';
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
  List<Bind> get binds => [
        // Controller
        Bind.lazySingleton((i) => MainBloc(i())),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (context, args) => const MainPage(),
      transition: TransitionType.noTransition,
      children: [
        ChildRoute(
          ParkingLotPage.routePath,
          child: (context, args) => const ParkingLotPage(),
          transition: TransitionType.noTransition,
        ),
        ChildRoute(
          VehicleEntrancePage.routePath,
          child: (context, args) => const VehicleEntrancePage(),
          transition: TransitionType.noTransition,
        ),
        ChildRoute(
          VehicleExitPage.routePath,
          child: (context, args) => const VehicleExitPage(),
          transition: TransitionType.noTransition,
        ),
      ],
    ),
  ];
}
