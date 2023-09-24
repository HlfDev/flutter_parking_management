// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../domain/domain.dart';
import '../atomic.dart';

class ParkingLotListBuilderOrganism extends StatelessWidget {
  final List<ParkingSpaceEntity>? parkingSpaceEntityList;
  final Function onListTitleTap;
  const ParkingLotListBuilderOrganism({
    Key? key,
    required this.parkingSpaceEntityList,
    required this.onListTitleTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if ((parkingSpaceEntityList == null) || parkingSpaceEntityList!.isEmpty) {
      return const ParkingLotEmptyEspacesMolecule();
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: parkingSpaceEntityList!.length,
      itemBuilder: (BuildContext context, index) => GestureDetector(
        onTap: () => onListTitleTap(
          parkingSpaceEntityList![index].id,
          index,
          parkingSpaceEntityList![index].code,
        ),
        child: ParkingLotListTileMolecule(
          parkingSpaceEntity: parkingSpaceEntityList![index],
        ),
      ),
    );
  }
}
