import 'package:flutter/material.dart';

import '../../../../../design_system/design_system.dart';

class SplashLoadingTemplate extends StatelessWidget {
  final String animationAsset;
  final String title;

  const SplashLoadingTemplate({
    Key? key,
    required this.animationAsset,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LottieAssetAtom(asset: animationAsset),
        const SizedBox(height: AppSizes.h_24),
        TextAtom.medium(
          text: title,
          fontSize: AppSizes.h_24,
        ),
      ],
    );
  }
}
