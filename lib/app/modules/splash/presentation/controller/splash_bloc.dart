import 'package:bloc/bloc.dart';

import '../../../../app.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final AppNavigator _appNavigator;

  SplashBloc(this._appNavigator) : super(SplashInitialState()) {
    on<SplashStartLoadEvent>((event, emit) => emit(SplashStartLoadState()));
    on<SplashStopLoadEvent>((event, emit) => emit(SplashStopLoadState(isLoaded: true)));
  }

  void navigateToMainModule() => _appNavigator.navigateToMainModule();
}
