// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../../../../app_strings.dart';
import '../../../../../../../design_system/design_system.dart';
import '../../../domain/domain.dart';

class ParkingLotListTileMolecule extends StatelessWidget {
  final ParkingSpaceEntity parkingSpaceEntity;

  const ParkingLotListTileMolecule({
    super.key,
    required this.parkingSpaceEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.r_8),
        child: Column(
          children: <Widget>[
            Chip(
              backgroundColor: parkingSpaceEntity.inUse ? AppColors.scale_05 : AppColors.darkGreen,
              label: TextAtom.bold(
                text: parkingSpaceEntity.inUse ? AppStrings.inUse : AppStrings.available,
                fontSize: AppSizes.h_20,
                color: AppColors.scale_00,
              ),
            ),
            const SizedBox(height: AppSizes.h_16),
            TextAtom.bold(
              text: AppStrings.addHashTag(parkingSpaceEntity.code),
              fontSize: 24,
              textAlign: TextAlign.start,
            ),
            const Spacer(),
            parkingSpaceEntity.inUse
                ? const SizedBox.shrink()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.delete, color: Colors.red),
                      SizedBox(width: AppSizes.w_4),
                      TextAtom.bold(
                        text: AppStrings.toRemove,
                        fontSize: AppSizes.h_16,
                      ),
                    ],
                  ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
