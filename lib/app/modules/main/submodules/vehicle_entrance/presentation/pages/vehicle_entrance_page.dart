// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../../../design_system/design_system.dart';
import '../../../vehicle_exit/presentation/pages/page.dart';

class VehicleEntrancePage extends StatelessWidget {
  static const routePath = '/veicle-entrance';

  const VehicleEntrancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NewFeatureMolecule(asset: AppAssetsVectors.svgUnderConstruction01),
    );
  }
}
