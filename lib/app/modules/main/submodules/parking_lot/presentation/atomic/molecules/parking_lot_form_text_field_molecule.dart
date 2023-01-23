import 'package:flutter/material.dart';

import '../../../../../../../design_system/design_system.dart';
import '../../../parking_lot_strings.dart';
import '../organisms/parking_lot_form_organism.dart';

class ParkingLotFormTextFieldMolecule extends StatelessWidget {
  const ParkingLotFormTextFieldMolecule({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final ParkingLotFormOrganism widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: widget.controllerParkingSpace,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return ParkingLotStrings.fillInSpaceCode;
              }

              return null;
            },
            keyboardType: TextInputType.number,
            maxLength: 5,
            cursorColor: Colors.black,
            decoration: const InputDecoration(
              icon: Icon(Icons.tag),
              labelText: ParkingLotStrings.spaceCode,
              errorStyle: TextStyle(
                fontSize: AppSizes.h_16,
                fontWeight: FontWeight.bold,
              ),
              labelStyle: TextStyle(
                color: AppColors.scale_06,
                fontSize: AppSizes.h_20,
                fontWeight: FontWeight.bold,
              ),
              hintStyle: TextStyle(
                color: AppColors.scale_06,
                fontSize: AppSizes.h_20,
                fontWeight: FontWeight.bold,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.scale_06),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
