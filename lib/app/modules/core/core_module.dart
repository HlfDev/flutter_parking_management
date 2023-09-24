// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
import '../../app.dart';
import 'services/cache/cache.dart';
import 'services/interfaces/interfaces.dart';
import 'services/navigator/modular_navigator_service_impl.dart';

class CoreModule extends Module {
  @override
  void exportedBinds(Injector i) {
    //Services
    i.addLazySingleton<CacheService>(HiveCacheServiceImpl.new);
    i.addLazySingleton<NavigatorService>(ModularNavigatorServiceImpl.new);

    // Navigator
    i.addLazySingleton(AppNavigator.new);
  }
}
