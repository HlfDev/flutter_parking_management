import 'package:flutter/material.dart';

import '../../../../../../../design_system/design_system.dart';
import '../../../parking_lot_strings.dart';
import '../molecules/parking_lot_form_text_field_molecule.dart';

class ParkingLotFormOrganism extends StatefulWidget {
  final TextEditingController controllerParkingSpace;
  final GlobalKey<FormState> formKey;

  final Function onSaveButtonTap;

  const ParkingLotFormOrganism({
    Key? key,
    required this.controllerParkingSpace,
    required this.onSaveButtonTap,
    required this.formKey,
  }) : super(key: key);

  @override
  State<ParkingLotFormOrganism> createState() => _ParkingLotFormOrganismState();
}

class _ParkingLotFormOrganismState extends State<ParkingLotFormOrganism> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.r_16),
          child: Column(
            children: [
              ParkingLotFormTextFieldMolecule(widget: widget),
              const SizedBox(height: AppSizes.h_8),
              ButtomMolecule(
                buttonText: ParkingLotStrings.registerSpace,
                onTap: () {
                  if (widget.formKey.currentState?.validate() ?? false) {
                    widget.onSaveButtonTap(widget.controllerParkingSpace.text);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
