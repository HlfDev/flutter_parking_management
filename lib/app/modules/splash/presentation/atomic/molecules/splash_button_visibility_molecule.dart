// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../../design_system/design_system.dart';

class SplashButtonVisibilityMolecule extends StatelessWidget {
  final bool isButtonVisibled;
  final VoidCallback? onButtonTap;
  final String buttonText;

  const SplashButtonVisibilityMolecule({
    Key? key,
    required this.isButtonVisibled,
    required this.onButtonTap,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.h_60,
      child: Visibility(
        visible: isButtonVisibled,
        child: ButtomMolecule(
          buttonText: buttonText,
          onTap: onButtonTap,
        ),
      ),
    );
  }
}
