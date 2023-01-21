import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';

import '../../../../design_system/atomic/atoms/text_atom.dart';
import '../../../../design_system/design_system.dart';
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
    return BlocBuilder<SplashBloc, SplashState>(
      bloc: _splashBloc,
      builder: (context, state) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Lottie.asset('assets/jsons/red_car_driving_animation.json'),
              ),
              const SizedBox(height: cSize24),
              const TextAtom.medium(
                text: 'Parking Management',
                fontSize: 24,
                color: AppColors.black,
              ),
            ],
          ),
        );
      },
    );
  }
}
