// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
import '../../../../design_system/design_system.dart';
import '../../splash.dart';
import '../atomic/atomic.dart';
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

    _splashBloc.add(const SplashLoadingEvent());

    Future.delayed(
      const Duration(seconds: 3),
      () => _splashBloc.add(const SplashLoadingFinishedEvent()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SplashBloc, SplashState>(
        bloc: _splashBloc,
        builder: (context, state) {
          return SplashTemplate(
            title: SplashStrings.parkingManagement,
            animationAsset: AppAssetsJson.jsonRedCarDriving,
            isButtonVisibled: state.isSplashLoadedState,
            onButtonTap: state.isSplashLoadedState ? _splashBloc.navigateToMainModule : null,
            isTemplateVisible: (state.isSplashLoadedState || state.isSplashLoadingState),
          );
        },
      ),
    );
  }
}
