// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
import 'data/data.dart';
import 'domain/domain.dart';
import 'presentation/presentation.dart';

class ParkingLotModule extends Module {
  @override
  List<Bind> get binds => [
        // Datasources
        Bind.lazySingleton((i) => ParkingLotLocalDatasourceImpl(i()), export: true),

        // Repositories
        Bind.lazySingleton((i) => ParkingLotRepositoryImpl(i()), export: true),

        // Usecases
        Bind.lazySingleton((i) => SaveParkingLotNewSpaceUseCaseImpl(i()), export: true),

        // Controllers
        Bind.lazySingleton((i) => ParkingLotBloc(), export: true),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const ParkingLotPage(),
    ),
  ];
}
