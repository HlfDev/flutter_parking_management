// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/pages/pages.dart';

class ParkingLotModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const ParkingLotPage(),
    ),
  ];
}
