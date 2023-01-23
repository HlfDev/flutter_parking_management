// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:
import '../../parking_lot_strings.dart';
import '../atomic/atomic.dart';
import '../controller/parking_lot_bloc.dart';

class ParkingLotPage extends StatefulWidget {
  static const routePath = '/parking-lot';

  const ParkingLotPage({super.key});

  @override
  State<ParkingLotPage> createState() => _ParkingLotPageState();
}

class _ParkingLotPageState extends State<ParkingLotPage> {
  final ParkingLotBloc _parkingLotBloc = Modular.get<ParkingLotBloc>();
  final TextEditingController _controllerParkingSpace = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    _parkingLotBloc.add(const ParkingLotLoadParkingEntityEvent());
  }

  @override
  void dispose() {
    _controllerParkingSpace.dispose();

    super.dispose();
  }

  void _showDeleteDialog(id, index, code) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ParkingLotWarningDialogMolecule(
          message: ParkingLotStrings.warningDialogMessage(code),
          onAcceptTap: () => _parkingLotBloc.add(
            ParkingLotRemoveParkingEntityEvent(
              parkingSpaceId: id,
              index: index,
            ),
          ),
        );
      },
    );
  }

  void _showExistingParkingSpaceDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const ParkingLotInfoDialogMolecule(
          message: ParkingLotStrings.infoDialogMessage,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocBuilder<ParkingLotBloc, ParkingLotState>(
        bloc: _parkingLotBloc,
        builder: (context, state) {
          return state.isParkingLotSuccessState
              ? ParkingLotTemplate(
                  controllerParkingSpace: _controllerParkingSpace,
                  formKey: _formKey,
                  parkingSpaceEntityList: state.parkingSpaceEntityList,
                  onAddParkingSpaceTap: (code) {
                    FocusScope.of(context).unfocus();
                    state.analyseIfExistsCode(code)
                        ? _showExistingParkingSpaceDialog()
                        : _parkingLotBloc.add(ParkingLotAddParkingEntityEvent(code: code));
                  },
                  onListTitleTap: (id, index, code) => _showDeleteDialog(id, index, code),
                )
              : const SizedBox.shrink();
        },
      ),
    );
  }
}
