// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/pages/page.dart';

class VehicleExitModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const VehicleExitPage(),
    ),
  ];
}
