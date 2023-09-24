// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
import 'presentation/pages/pages.dart';

class VehicleEntranceModule extends Module {
  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      transition: TransitionType.noTransition,
      child: (_) => const VehicleEntrancePage(),
    );
  }
}
