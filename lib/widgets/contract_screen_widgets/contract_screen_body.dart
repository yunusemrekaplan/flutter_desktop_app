// ignore_for_file: must_be_immutable

import 'package:desktop_app/widgets/date_picker_row.dart';
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

  TextEditingController dateEntry = TextEditingController();
  TextEditingController dateExit = TextEditingController();
  TextEditingController dateLicense = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController tcController = TextEditingController();
  TextEditingController licenseNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: (MediaQuery.of(context).size.width / 10 * 3) < 300
                    ? 300
                    : (MediaQuery.of(context).size.width / 10 * 3),
                height: 320,
                color: Colors.green,
                child: Center(
                  child: Column(
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Müşteri Bilgileri',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: InputRow(
                          label: 'Adı: ',
                          controller: nameController,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: InputRow(
                          label: 'Soyad: ',
                          controller: surnameController,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: InputRow(
                          label: 'T.C: ',
                          controller: tcController,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: InputRow(
                          label: 'Ehliyet No: ',
                          controller: licenseNoController,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: DatePickerRow(
                          label: 'Ehliyet Tarihi',
                          dateController: dateLicense,
                          containerWidth: 160,
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            dataController.customerName = nameController.text;
                            dataController.customerSurname =
                                surnameController.text;
                            dataController.tcNo = tcController.text;
                            dataController.licenseNo = licenseNoController.text;
                            dataController.licenseDate =
                                DateTime.tryParse(dateLicense.text)!;
                            dataController.plate = dropdownValue;
                            dataController.exitDate =
                                DateTime.tryParse(dateExit.text)!;
                            dataController.entryDate =
                                DateTime.tryParse(dateEntry.text)!;
                          });
                        },
                        child: const Text('Kaydet'),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width / 10 * 7 - 40,
                height: 320,
                color: Colors.green,
                child: Center(
                  child: Column(
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Araç Bilgileri',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Plaka: ',
                              style: TextStyle(
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
                                      decoration: const InputDecoration(
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
                      DatePickerRow(
                        label: 'Çıkış Tarihi: ',
                        dateController: dateExit,
                        containerWidth: 110.0,
                      ),
                      DatePickerRow(
                        label: 'Giriş Tarihi: ',
                        dateController: dateEntry,
                        containerWidth: 110.0,
                      ),
                    ],
                  ),
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
                width: MediaQuery.of(context).size.width - 25,
                height: MediaQuery.of(context).size.height - 420,
                color: Colors.green,
                child: Column(
                  children: [
                    const Text(
                      'Sözleşme Bilgileri',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            'Müşteri: ',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            '${dataController.customerName} ${dataController.customerSurname}',
                            style: const TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            'Araç: ',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            dataController.plate,
                            style: const TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            'Süre: ',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            '${dataController.entryDate.difference(dataController.exitDate).inDays.toString()} Gün',
                            style: const TextStyle(
                              fontSize: 20.0,
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
      ],
    );
  }
}
