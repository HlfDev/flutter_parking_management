// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
import '../../app.dart';
import 'services/cache/cache.dart';

class CoreModule extends Module {
  @override
  void exportedBinds(Injector i) {
    //Services
    i.addLazySingleton(HiveCacheServiceImpl.new);

    // Navigator
    i.addLazySingleton(AppNavigator.new);
  }
}
