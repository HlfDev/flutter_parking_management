import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/pages/pages.dart';

class SplashModule extends Module {
  static const moduleName = '/';

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      SplashPage.routeName,
      child: (_, args) => const SplashPage(),
    ),
  ];
}
