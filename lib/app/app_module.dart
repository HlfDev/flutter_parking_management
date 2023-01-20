import 'package:flutter_modular/flutter_modular.dart';

import 'modules/core/core.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [];
}
