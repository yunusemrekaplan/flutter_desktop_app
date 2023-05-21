// ignore_for_file: prefer_const_constructors

import 'package:desktop_app/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 50,
            child: Container(
              color: Colors.blueGrey,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Ad: ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      decoration: BoxDecoration(border: Border.all()),
                      width: 160,
                      height: 27,
                      child: const Center(
                        child: SizedBox(
                          height: 30,
                          child: TextField(
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              hintText: 'Bir şeyler yazın...',
                            ),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
