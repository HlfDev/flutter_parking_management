import 'package:bloc/bloc.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitialState()) {
    on<SplashStartLoadEvent>((event, emit) => emit(SplashStartLoadState()));
    on<SplashStopLoadEvent>((event, emit) => emit(SplashStopLoadState(isLoaded: true)));
  }
}
