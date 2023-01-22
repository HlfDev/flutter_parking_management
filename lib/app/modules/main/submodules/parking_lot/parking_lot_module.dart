// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
import 'presentation/controller/controller.dart';
import 'presentation/pages/pages.dart';

class ParkingLotModule extends Module {
  @override
  List<Bind> get binds => [
        // Controller
        Bind.lazySingleton((i) => ParkingLotBloc(), export: true),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const ParkingLotPage(),
    ),
  ];
}
