// ignore_for_file: prefer_const_constructors

import 'package:desktop_app/controller.dart';
import 'package:desktop_app/widgets/contract_screen_widgets/contract_screen_body.dart';
import 'package:desktop_app/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/input_row.dart';

class ContractScreen extends StatefulWidget {
  const ContractScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ContractScreen();
}

class _ContractScreen extends State<ContractScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Araç Kirala'),
      ),
      drawer: MyDrawer(),
      body: ContractScreenBody(),
    );
  }
}
