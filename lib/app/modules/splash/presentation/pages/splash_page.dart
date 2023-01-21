import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controller/controller.dart';

class SplashPage extends StatefulWidget {
  static const routeName = '/';

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashBloc _splashBloc = Modular.get<SplashBloc>();

  @override
  void initState() {
    super.initState();

    _splashBloc.add(SplasLoadingEvent());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
