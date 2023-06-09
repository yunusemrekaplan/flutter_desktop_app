// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../controller.dart';

class InputRow extends StatelessWidget {
  DataController dataController = DataController();

  late String label;
  late TextEditingController controller;

  InputRow({super.key, required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
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
              width: 160,
              height: 27,
              child: Center(
                child: SizedBox(
                  height: 30,
                  child: TextField(
                    controller: controller,
                    textAlign: TextAlign.start,
                    decoration: const InputDecoration(
                      hintText: 'Bir şeyler yazın...',
                    ),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
