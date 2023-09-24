// Flutter imports:
import 'package:flutter/services.dart';
// Package imports:
import 'package:hive_flutter/hive_flutter.dart';

// Project imports:
import 'design_system/tokens/app_colors.dart';
import 'modules/main/submodules/parking_lot/domain/domain.dart';

class AppInitializers {
  static Future init() async {
    // System
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: AppColors.transparent),
    );
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    // Hive
    await Hive.initFlutter();
    Hive.registerAdapter(ParkingSpaceEntityAdapter());
  }
}
