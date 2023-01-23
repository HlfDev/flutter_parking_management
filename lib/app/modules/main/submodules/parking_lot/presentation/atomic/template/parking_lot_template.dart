// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../../../../design_system/design_system.dart';
import '../../../domain/domain.dart';
import '../organisms/parking_lot_form_organism.dart';
import '../organisms/parking_lot_list_builder_organism.dart';

class ParkingLotTemplate extends StatelessWidget {
  final TextEditingController controllerParkingSpace;
  final GlobalKey<FormState> formKey;
  final List<ParkingSpaceEntity>? parkingSpaceEntityList;

  final Function onListTitleTap;
  final Function onAddParkingSpaceTap;

  const ParkingLotTemplate({
    Key? key,
    required this.controllerParkingSpace,
    required this.formKey,
    required this.parkingSpaceEntityList,
    required this.onListTitleTap,
    required this.onAddParkingSpaceTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.r_16),
      child: Column(
        children: [
          ParkingLotFormOrganism(
            controllerParkingSpace: controllerParkingSpace,
            formKey: formKey,
            onSaveButtonTap: onAddParkingSpaceTap,
          ),
          const SizedBox(height: AppSizes.h_16),
          Expanded(
            child: SingleChildScrollView(
              child: ParkingLotListBuilderOrganism(
                parkingSpaceEntityList: parkingSpaceEntityList,
                onListTitleTap: onListTitleTap,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
