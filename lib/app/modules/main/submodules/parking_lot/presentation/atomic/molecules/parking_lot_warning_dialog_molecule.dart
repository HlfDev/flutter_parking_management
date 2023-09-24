// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../../../../app_strings.dart';
import '../../../../../../../design_system/design_system.dart';

class ParkingLotWarningDialogMolecule extends StatelessWidget {
  final String message;

  final Function onAcceptTap;

  const ParkingLotWarningDialogMolecule({
    Key? key,
    required this.message,
    required this.onAcceptTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      title: Column(
        children: const [
          Icon(
            Icons.warning,
            color: AppColors.orange,
            size: AppSizes.h_64,
          ),
          TextAtom.bold(
            text: AppStrings.warning,
            fontSize: AppSizes.h_32,
          ),
        ],
      ),
      content: TextAtom.bold(
        text: message,
        fontSize: AppSizes.h_20,
      ),
      actions: [
        ButtomMolecule(
          buttonText: AppStrings.no,
          onTap: () => Navigator.of(context).pop(),
        ),
        const SizedBox(width: AppSizes.w_8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.r_16),
          child: TextButton(
            child: const TextAtom.bold(
              text: AppStrings.yes,
              fontSize: AppSizes.h_24,
            ),
            onPressed: () {
              onAcceptTap();
              Navigator.of(context).pop();
            },
          ),
        ),
      ],
    );
  }
}
