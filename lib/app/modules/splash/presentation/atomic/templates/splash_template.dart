// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../../design_system/design_system.dart';
import '../../../splash.dart';
import '../atomic.dart';

class SplashTemplate extends StatelessWidget {
  final String animationAsset;
  final String title;

  final bool isButtonVisibled;
  final VoidCallback? onButtonTap;
  final String buttonText;

  final bool isTemplateVisible;

  const SplashTemplate({
    Key? key,
    required this.animationAsset,
    required this.title,
    this.isButtonVisibled = false,
    this.onButtonTap,
    this.buttonText = SplashStrings.enter,
    this.isTemplateVisible = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isTemplateVisible ? 1.0 : 0.0,
      duration: const Duration(seconds: 1),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.r_24),
          child: Column(
            children: [
              const Spacer(),
              SizedBox(
                height: (AppSizes.mediaQuery(context).height / 2.5),
                child: LottieAssetAtom(asset: animationAsset),
              ),
              const SizedBox(height: AppSizes.h_24),
              TextAtom.bold(
                text: title,
                fontSize: AppSizes.h_32,
              ),
              const Spacer(),
              SplashButtonVisibilityMolecule(
                isButtonVisibled: isButtonVisibled,
                onButtonTap: onButtonTap,
                buttonText: buttonText,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
