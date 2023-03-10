// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
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
      Modular.initialRoute,
      child: (_, args) => const SplashPage(),
    ),
  ];
}
