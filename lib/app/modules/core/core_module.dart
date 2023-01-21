import 'package:flutter_modular/flutter_modular.dart';

import 'services/cache/cache.dart';
import 'services/navigator/navigator.dart';

class CoreModule extends Module {
  @override
  final List<Bind> binds = [
    //Services
    Bind.lazySingleton((i) => HiveCacheServiceImpl(i()), export: true),
    Bind.lazySingleton((i) => ModularNavigatorServiceImpl(), export: true),
  ];
}
