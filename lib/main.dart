// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
import 'app/app.dart';
import 'app/app_initializers.dart';

void main() async {
  await AppInitializers.init();

  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
