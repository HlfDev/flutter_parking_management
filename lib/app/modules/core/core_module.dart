// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
import '../../app.dart';
import 'services/cache/cache.dart';
import 'services/navigator/navigator.dart';

class CoreModule extends Module {
  @override
  List<Bind> get binds => [
        //Services
        Bind.lazySingleton((i) => HiveCacheServiceImpl(i()), export: true),
        Bind.lazySingleton((i) => ModularNavigatorServiceImpl(), export: true),

        // Navigator
        Bind.lazySingleton((i) => AppNavigator(i()), export: true),
      ];
}
