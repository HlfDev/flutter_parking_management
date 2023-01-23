// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:flutter_parking_management/app/app.dart';
import 'package:flutter_parking_management/app/modules/core/services/interfaces/interfaces.dart';
import 'package:flutter_parking_management/app/modules/splash/presentation/controller/controller.dart';
import '../../splash_mocks.dart';

void main() {
  late NavigatorService navigatorService;
  late AppNavigator appNavigator;
  late SplashBloc splashBloc;

  setUp(() {
    navigatorService = MockNavigatorServiceImpl();
    appNavigator = AppNavigator(navigatorService);
    splashBloc = SplashBloc(appNavigator);
  });

  tearDown(() {
    splashBloc.close();
  });

  test('should [SplashState] start with [SplashInitialState]', () {
    // Assert
    expect(splashBloc.state, equals(const SplashInitialState()));
  });

  blocTest(
    'should emit [SplashLoadingState] after add [SplashLoadingEvent]',
    build: () => splashBloc,
    act: (bloc) => bloc.add(const SplashLoadingEvent()),
    expect: () => [const SplashLoadingState()],
  );

  blocTest(
    'should emit [SplashLoadedState] after add [SplashLoadingFinishedEvent]',
    build: () => splashBloc,
    act: (bloc) => bloc.add(const SplashLoadingFinishedEvent()),
    expect: () => [const SplashLoadedState()],
  );

  blocTest(
    'should emit respectively [SplashLoadingState, SplashLoadedState] after add [SplashLoadingEvent, SplashLoadingFinishedEvent]',
    build: () => splashBloc,
    act: (bloc) {
      bloc.add(const SplashLoadingEvent());
      bloc.add(const SplashLoadingFinishedEvent());
    },
    expect: () => [
      const SplashLoadingState(),
      const SplashLoadedState(),
    ],
  );
}
