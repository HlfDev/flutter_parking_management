// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../../design_system/design_system.dart';

class SplashButtonVisibilityMolecule extends StatelessWidget {
  const SplashButtonVisibilityMolecule({
    Key? key,
    required this.isButtonVisibled,
    required this.onButtonTap,
    required this.buttonText,
  }) : super(key: key);

  final bool isButtonVisibled;
  final VoidCallback? onButtonTap;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.h_60,
      child: Visibility(
        visible: isButtonVisibled,
        child: ElevatedButtonAtom.rounded(
          onPressed: onButtonTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.r_24,
              vertical: AppSizes.r_8,
            ),
            child: TextAtom.medium(
              text: buttonText,
              fontSize: AppSizes.h_24,
            ),
          ),
        ),
      ),
    );
  }
}
