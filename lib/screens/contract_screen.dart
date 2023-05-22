// ignore_for_file: prefer_const_constructors

import 'package:desktop_app/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/input_row.dart';

class ContractScreen extends StatefulWidget {
  const ContractScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ContractScreen();
}

class _ContractScreen extends State<ContractScreen> {
  TextEditingController dateCtl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Araç Kirala'),
      ),
      drawer: MyDrawer(),
      body: Row(
        children: [
          Container(
            width: 300,
            color: Colors.green,
            child: Column(
              children: [
                InputRow(label: 'Adı: '),
                InputRow(label: 'Soyad: '),
                InputRow(label: 'T.C: '),
                InputRow(label: 'Ehliyet No: '),
                SizedBox(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Ehliyet Tarihi: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(border: Border.all()),
                          width: 160,
                          height: 27,
                          child: Center(
                            child: SizedBox(
                              height: 30,
                              child: TextFormField(
                                controller: dateCtl,
                                decoration: InputDecoration(
                                  hintText: "Ex. Insert your dob",
                                ),
                                onTap: () async {
                                  DateTime date = DateTime(1900);
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());

                                  date = (await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime(2100)))!;

                                  dateCtl.text = date.toString().substring(
                                      0, 10); //date.toIso8601String();
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
