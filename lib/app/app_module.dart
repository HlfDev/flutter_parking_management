// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
import 'modules/core/core.dart';
import 'modules/main/main_module.dart';
import 'modules/splash/splash.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];

  @override
  void routes(r) {
    r.module(SplashModule.moduleName, module: SplashModule());
    r.module(MainModule.moduleName, module: MainModule());
  }
}
