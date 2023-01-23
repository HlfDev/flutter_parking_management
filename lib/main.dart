// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
import 'app/app.dart';
import 'app/app_initializers.dart';
import 'app/design_system/design_system.dart';

void main() async {
  await AppInitializers.init();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: AppColors.transparent),
  );

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
