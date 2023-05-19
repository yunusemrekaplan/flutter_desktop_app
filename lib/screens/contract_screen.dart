import 'package:desktop_app/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class ContractScreen extends StatefulWidget {
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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 300,
            child: Container(
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }
}
