import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../interfaces/interfaces.dart';

class ModularNavigatorServiceImpl implements NavigatorService {
  @override
  Future push(String route, {Object? arguments}) {
    return Modular.to.pushNamed(route, arguments: arguments);
  }

  @override
  Future pushReplacement(String route, {Object? arguments}) {
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
}
