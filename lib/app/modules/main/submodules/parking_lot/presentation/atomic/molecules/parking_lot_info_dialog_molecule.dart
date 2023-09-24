// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../../../../app_strings.dart';
import '../../../../../../../design_system/design_system.dart';

class ParkingLotInfoDialogMolecule extends StatelessWidget {
  final String message;

  const ParkingLotInfoDialogMolecule({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      title: const Column(
        children: [
          Icon(
            Icons.info,
            color: AppColors.blue,
            size: AppSizes.h_64,
          ),
          TextAtom.bold(
            text: AppStrings.info,
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
          buttonText: AppStrings.understood,
          buttonColor: AppColors.blue,
          onTap: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
}
