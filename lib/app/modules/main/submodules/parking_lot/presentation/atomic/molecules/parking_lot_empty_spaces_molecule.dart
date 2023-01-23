import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../../design_system/design_system.dart';
import '../../../parking_lot_strings.dart';

class ParkingLotEmptyEspacesMolecule extends StatelessWidget {
  const ParkingLotEmptyEspacesMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppSizes.h_16),
        SizedBox(
          height: (AppSizes.mediaQuery(context).height / 6),
          child: SvgPicture.asset(AppAssetsVectors.jsonNoDataLogo),
        ),
        const SizedBox(height: AppSizes.h_16),
        const TextAtom.bold(
          text: ParkingLotStrings.noSpaceFound,
          fontSize: AppSizes.h_24,
        ),
        const SizedBox(height: AppSizes.h_16),
        const TextAtom.medium(
          text: ParkingLotStrings.noSpaceFoundSubtitle,
          fontSize: AppSizes.h_20,
        ),
      ],
    );
  }
}
