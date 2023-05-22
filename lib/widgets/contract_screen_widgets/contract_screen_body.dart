// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../controller.dart';
import '../input_row.dart';

class ContractScreenBody extends StatefulWidget {
  const ContractScreenBody({super.key});

  @override
  State<ContractScreenBody> createState() => _ContractScreenBodyState();
}

class _ContractScreenBodyState extends State<ContractScreenBody> {
  DataController dataController = DataController();

  String dropdownValue = '34 AA 0000';

  TextEditingController dateCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                height: 300,
                color: Colors.green,
                child: Column(
                  children: [
                    Text(
                      'Müşteri Bilgileri',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 20),
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
                                      hintText: DateTime.now()
                                          .toString()
                                          .substring(0, 10),
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                height: 300,
                color: Colors.green,
                child: Column(
                  children: [
                    Text(
                      'Araç Bilgileri',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Plaka: ',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 150,
                            height: 50,
                            child: Center(
                              child: SizedBox(
                                  height: 50,
                                  child: DropdownButtonFormField(
                                    value: dropdownValue,
                                    icon: const Icon(Icons.arrow_downward),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                    ),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValue = newValue!;
                                      });
                                    },
                                    items: <String>[
                                      '34 AA 0000',
                                      '34 BB 0000',
                                      '34 CC 0000',
                                      '34 DD 0000',
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Çıkış Tarihi: ',
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
                              width: 110,
                              height: 27,
                              child: Center(
                                child: SizedBox(
                                  height: 30,
                                  child: TextFormField(
                                    controller: dateCtl,
                                    decoration: InputDecoration(
                                      hintText: DateTime.now()
                                          .toString()
                                          .substring(0, 10),
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
                    SizedBox(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Giriş Tarihi: ',
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
                              width: 110,
                              height: 27,
                              child: Center(
                                child: SizedBox(
                                  height: 30,
                                  child: TextFormField(
                                    controller: dateCtl,
                                    decoration: InputDecoration(
                                      hintText: DateTime.now()
                                          .toString()
                                          .substring(0, 10),
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
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 616.0,
                height: 250,
                color: Colors.green,
                child: Column(
                  children: [
                    Text(
                      'Sözleşme Bilgileri',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Müşteri: ',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          '${dataController.customerName} ${dataController.customerSurname}',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
