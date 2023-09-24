// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
import 'main.dart';
import 'presentation/controller/main_bloc.dart';
import 'submodules/submodules.dart';

class MainModule extends Module {
  static const moduleName = '/main';

  static const parkingLotPagePath = '$moduleName${ParkingLotPage.routePath}';
  static const vehicleEntrancePagePath =
      '$moduleName${VehicleEntrancePage.routePath}';
  static const vehicleExitPagePath = '$moduleName${VehicleExitPage.routePath}';

  @override
  List<Module> get imports => [
        ParkingLotModule(),
        VehicleEntranceModule(),
        VehicleExitModule(),
      ];

  @override
  void binds(i) {
    i.addLazySingleton(MainBloc.new);
  }

  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      transition: TransitionType.noTransition,
      child: (_) => const MainPage(),
      children: [
        ParallelRoute.child(
          ParkingLotPage.routePath,
          transition: TransitionType.noTransition,
          child: (_) => const ParkingLotPage(),
        ),
        ParallelRoute.child(
          VehicleEntrancePage.routePath,
          child: (_) => const VehicleEntrancePage(),
          transition: TransitionType.noTransition,
        ),
        ParallelRoute.child(
          VehicleExitPage.routePath,
          child: (_) => const VehicleExitPage(),
          transition: TransitionType.noTransition,
        ),
      ],
    );
  }
}
