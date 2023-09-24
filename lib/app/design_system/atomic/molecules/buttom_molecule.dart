// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../design_system.dart';

class ButtomMolecule extends StatelessWidget {
  final VoidCallback? onTap;
  final String buttonText;
  final Color buttonColor;

  const ButtomMolecule({
    Key? key,
    required this.onTap,
    required this.buttonText,
    this.buttonColor = AppColors.secondary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.h_60,
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.r_16)),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.r_24,
            vertical: AppSizes.r_8,
          ),
          child: TextAtom.bold(
            text: buttonText,
            fontSize: AppSizes.h_24,
            color: AppColors.scale_00,
          ),
        ),
      ),
    );
  }
}
