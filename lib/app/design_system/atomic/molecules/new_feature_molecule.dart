import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../app_strings.dart';
import '../../design_system.dart';

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
          text: AppStrings.underDevelopment,
          fontSize: AppSizes.h_32,
        ),
        const Spacer(),
      ],
    );
  }
}
