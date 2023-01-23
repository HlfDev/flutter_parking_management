// Package imports:
import 'package:hive_flutter/hive_flutter.dart';

// Project imports:
import 'modules/main/submodules/parking_lot/domain/domain.dart';

class AppInitializers {
  static Future init() async {
    // Hive
    await Hive.initFlutter();
    Hive.registerAdapter(ParkingSpaceEntityAdapter());
  }
}
