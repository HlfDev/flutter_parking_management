// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
import 'presentation/controller/controller.dart';
import 'presentation/pages/pages.dart';

class SplashModule extends Module {
  static const moduleName = '/';

  @override
  void binds(i) {
    i.addLazySingleton(SplashBloc.new);
  }

  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      child: (_) => const SplashPage(),
    );
  }
}
