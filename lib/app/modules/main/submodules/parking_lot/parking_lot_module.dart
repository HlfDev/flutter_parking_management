// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
import 'data/data.dart';
import 'domain/domain.dart';
import 'presentation/presentation.dart';

class ParkingLotModule extends Module {
  @override
  void exportedBinds(i) {
    // Datasource's
    i.addLazySingleton<ParkingLotLocalDatasource>(
      ParkingLotLocalDatasourceImpl.new,
    );

    // Repositories
    i.addLazySingleton<ParkingLotRepository>(ParkingLotRepositoryImpl.new);

    // Use cases
    i.addLazySingleton<SaveParkingLotNewSpaceUseCase>(
      SaveParkingLotNewSpaceUseCaseImpl.new,
    );
    i.addLazySingleton<GetListOfParkingLotSpaceUseCase>(
      GetListOfParkingLotSpaceUseCaseImpl.new,
    );
    i.addLazySingleton<RemoveParkingLotSpaceByKeyUseCase>(
      RemoveParkingLotSpaceByIdUseCaseImpl.new,
    );

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
