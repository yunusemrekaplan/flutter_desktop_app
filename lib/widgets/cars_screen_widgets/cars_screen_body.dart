// ignore_for_file: no_logic_in_create_state, must_be_immutable

import 'package:flutter/material.dart';

import '../search_box.dart';

class CarsScreenBody extends StatefulWidget {
  late DataTable dataTable;

  CarsScreenBody({super.key, required this.dataTable});

  @override
  State<StatefulWidget> createState() =>
      _CarsScreenBodyState(dataTable: dataTable);
}

class _CarsScreenBodyState extends State<CarsScreenBody> {
  late DataTable dataTable;

  _CarsScreenBodyState({required this.dataTable});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          height: 50,
          width: double.infinity,
          child: Row(
            children: [
              SizedBox(
                child: SearchBox(),
              ),
              Expanded(child: Container()),
              SizedBox(
                child: Row(mainAxisSize: MainAxisSize.max, children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: Text('Tüm Araçlar'),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: Text('Kiralık Araçlar'),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: Text('Kiradaki Araçlar'),
                      onPressed: () {},
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 10 * 7,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: dataTable,
                )
              ],
            ),
          ),
        ),
        Expanded(child: Container()),
        SizedBox(
          height: 70,
          width: double.infinity,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Text('Araç Ekle'),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
