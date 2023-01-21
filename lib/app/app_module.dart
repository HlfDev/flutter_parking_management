import 'package:flutter_modular/flutter_modular.dart';

import 'app.dart';
import 'modules/core/core.dart';
import 'modules/splash/splash.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];

  @override
  final List<Bind> binds = [
    // Navigator
    Bind.lazySingleton((i) => AppNavigator(i()), export: true),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(SplashModule.moduleName, module: SplashModule()),
  ];
}
