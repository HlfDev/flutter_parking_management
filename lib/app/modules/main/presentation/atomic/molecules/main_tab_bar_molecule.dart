// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../../design_system/design_system.dart';
import '../../../main_strings.dart';

class MainTabBarMolecule extends AppBar {
  final void Function(int)? onTapOption;

  final TabController tabController;

  MainTabBarMolecule({
    Key? key,
    this.onTapOption,
    required this.tabController,
  }) : super(
          key: key,
          backgroundColor: AppColors.scale_06,
          bottom: PreferredSize(
            preferredSize: const Size(AppSizes.h_48, AppSizes.h_48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TabBar(
                  isScrollable: true,
                  labelColor: AppColors.scale_01,
                  indicatorColor: AppColors.orange,
                  indicatorWeight: AppSizes.h_8,
                  onTap: onTapOption,
                  controller: tabController,
                  padding: const EdgeInsets.all(AppSizes.r_4),
                  tabs: const [
                    TextAtom.bold(
                      text: MainStrings.spaces,
                      fontSize: AppSizes.h_24,
                      color: AppColors.orange,
                    ),
                    TextAtom.bold(
                      text: MainStrings.entrances,
                      fontSize: AppSizes.h_24,
                      color: AppColors.orange,
                    ),
                    TextAtom.bold(
                      text: MainStrings.exitAndHistory,
                      fontSize: AppSizes.h_24,
                      color: AppColors.orange,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
}
