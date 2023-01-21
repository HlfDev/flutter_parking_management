import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/controller/controller.dart';
import 'presentation/pages/pages.dart';

class SplashModule extends Module {
  static const moduleName = '/';

  @override
  List<Bind> get binds => [
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
