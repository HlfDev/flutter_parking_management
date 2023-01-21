// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
import 'app/app.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
