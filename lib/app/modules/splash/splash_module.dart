import 'package:flutter_modular/flutter_modular.dart';

import '../core/core.dart';

import 'presentation/controller/controller.dart';
import 'presentation/pages/pages.dart';

class SplashModule extends Module {
  static const moduleName = '/';

  @override
  List<Module> get imports => [CoreModule()];

  @override
  final List<Bind> binds = [
    // Controller
    Bind.lazySingleton((i) => SplashBloc(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      SplashPage.routeName,
      child: (_, args) => const SplashPage(),
    ),
  ];
}
