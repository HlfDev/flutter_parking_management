// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import '../../../../../../design_system/design_system.dart';

class VehicleExitPage extends StatelessWidget {
  static const routePath = '/vehicle-exit';

  const VehicleExitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NewFeatureMolecule(asset: AppAssetsVectors.svgUnderConstruction02),
    );
  }
}

class NewFeatureMolecule extends StatelessWidget {
  final String asset;
  const NewFeatureMolecule({
    Key? key,
    required this.asset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Expanded(child: SvgPicture.asset(asset)),
        const SizedBox(height: AppSizes.h_32),
        const TextAtom.bold(
          text: 'Em Desenvolvimento',
          fontSize: AppSizes.h_32,
        ),
        const Spacer(),
      ],
    );
  }
}
