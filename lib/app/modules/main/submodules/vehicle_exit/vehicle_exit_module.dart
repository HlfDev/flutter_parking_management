// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
import 'presentation/pages/page.dart';

class VehicleExitModule extends Module {
  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      transition: TransitionType.noTransition,
      child: (_) => const VehicleExitPage(),
    );
  }
}
