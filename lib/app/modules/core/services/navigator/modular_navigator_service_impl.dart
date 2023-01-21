// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
import '../interfaces/interfaces.dart';

class ModularNavigatorServiceImpl implements NavigatorService {
  @override
  Future<void> push(String route, {Object? arguments}) {
    return Modular.to.pushNamed(route, arguments: arguments);
  }

  @override
  Future<void> pushReplacement(String route, {Object? arguments}) {
    return Modular.to.pushReplacementNamed(route, arguments: arguments);
  }

  @override
  void pop() {
    Modular.to.pop();
  }

  @override
  void popUntil(String route) {
    Modular.to.popUntil(ModalRoute.withName(route));
  }

  @override
  void navigate(String route) {
    Modular.to.navigate(route);
  }
}
