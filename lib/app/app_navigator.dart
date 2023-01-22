// Project imports:
import 'modules/core/services/interfaces/interfaces.dart';
import 'modules/main/main_module.dart';

class AppNavigator {
  final NavigatorService _navigatorService;

  AppNavigator(this._navigatorService);

  Future<void> navigateToMainModuleParkingLotPage() async {
    _navigatorService.navigate(MainModule.parkingLotPagePath);
  }
}
