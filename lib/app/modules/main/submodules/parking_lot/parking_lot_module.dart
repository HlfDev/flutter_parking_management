// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
import 'data/data.dart';
import 'domain/domain.dart';
import 'presentation/presentation.dart';

class ParkingLotModule extends Module {
  @override
  void binds(i) {
    // Datasources
    i.addLazySingleton(ParkingLotLocalDatasourceImpl.new);

    // Repositories
    i.addLazySingleton(ParkingLotRepositoryImpl.new);

    // Usecases
    i.addLazySingleton(SaveParkingLotNewSpaceUseCaseImpl.new);
    i.addLazySingleton(GetListOfParkingLotSpaceUseCaseImpl.new);
    i.addLazySingleton(RemoveParkingLotSpaceByIdUseCaseImpl.new);

    // Controllers
    i.addLazySingleton(ParkingLotBloc.new);
  }

  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      transition: TransitionType.noTransition,
      child: (_) => const ParkingLotPage(),
    );
  }
}
