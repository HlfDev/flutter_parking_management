// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
import 'presentation/pages/pages.dart';

class VehicleEntranceModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const VehicleEntrancePage(),
    ),
  ];
}
