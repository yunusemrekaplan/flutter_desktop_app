// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DatePickerRow extends StatelessWidget {
  late String label;
  late TextEditingController dateController;
  double containerWidth = 160;

  DatePickerRow(
      {super.key,
      required this.label,
      required this.dateController,
      required this.containerWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(border: Border.all()),
            width: containerWidth,
            height: 27,
            child: Center(
              child: SizedBox(
                height: 30,
                child: TextFormField(
                  controller: dateController,
                  decoration: InputDecoration(
                    hintText: DateTime.now().toString().substring(0, 10),
                  ),
                  onTap: () async {
                    DateTime date = DateTime(1900);
                    FocusScope.of(context).requestFocus(FocusNode());

                    date = (await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2100)))!;

                    dateController.text = date
                        .toString()
                        .substring(0, 10); //date.toIso8601String();
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
