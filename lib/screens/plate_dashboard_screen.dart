import 'package:desktop_app/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/plate_dashboard_screen_widgets/plate_dashboard_screen_body.dart';

class PlateDashboardScreen extends StatefulWidget {
  const PlateDashboardScreen({super.key});

  @override
  State<StatefulWidget> createState() => _PlateDashboardScreen();
}

class _PlateDashboardScreen extends State<PlateDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('34 AA 0000'),
      ),
      drawer: MyDrawer(),
      body: const PlateDashboardScreenBody(),
    );
  }
}
