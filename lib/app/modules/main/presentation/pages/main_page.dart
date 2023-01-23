// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_modular/flutter_modular.dart';

// Project imports:

import '../atomic/molecules/main_tab_bar_molecule.dart';
import '../controller/controller.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  final MainBloc _mainBloc = Modular.get<MainBloc>();

  late TabController _tabController;

  void _initializeTabController() => _tabController = TabController(length: 3, vsync: this);

  @override
  void initState() {
    super.initState();
    _initializeTabController();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainTabBarMolecule(
        tabController: _tabController,
        onTapOption: (index) => _mainBloc.add(ChangeCurrentPageEvent(index: index)),
      ),
      body: const RouterOutlet(),
    );
  }
}
