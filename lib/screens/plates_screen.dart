// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:desktop_app/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/search_box.dart';

class PlatesScreen extends StatefulWidget {
  const PlatesScreen({super.key});

  @override
  State<StatefulWidget> createState() => _PlatesScreen();
}

class _PlatesScreen extends State<PlatesScreen> {
  DataTable dataTable = DataTable(
    columns: [
      DataColumn(label: Text('Plaka')),
      DataColumn(label: Text('Fiyat')),
      DataColumn(label: Text('Durum')),
    ],
    rows: [
      DataRow(cells: [
        DataCell(Text('34 AA 0000')),
        DataCell(Text('200.000')),
        DataCell(Text('Kirada')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000')),
        DataCell(Text('200.000')),
        DataCell(Text('Kirada')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000')),
        DataCell(Text('200.000')),
        DataCell(Text('Kirada')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000')),
        DataCell(Text('200.000')),
        DataCell(Text('Kirada')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000')),
        DataCell(Text('200.000')),
        DataCell(Text('Kirada')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000')),
        DataCell(Text('200.000')),
        DataCell(Text('Kirada')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000')),
        DataCell(Text('200.000')),
        DataCell(Text('Kirada')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000')),
        DataCell(Text('200.000')),
        DataCell(Text('Kirada')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000')),
        DataCell(Text('200.000')),
        DataCell(Text('Kirada')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000')),
        DataCell(Text('200.000')),
        DataCell(Text('Kirada')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000')),
        DataCell(Text('200.000')),
        DataCell(Text('Kirada')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000')),
        DataCell(Text('200.000')),
        DataCell(Text('Kirada')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000')),
        DataCell(Text('200.000')),
        DataCell(Text('Kirada')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000')),
        DataCell(Text('200.000')),
        DataCell(Text('Kirada')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000')),
        DataCell(Text('200.000')),
        DataCell(Text('Kirada')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000')),
        DataCell(Text('200.000')),
        DataCell(Text('Kirada')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000')),
        DataCell(Text('200.000')),
        DataCell(Text('Kirada')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000')),
        DataCell(Text('200.000')),
        DataCell(Text('Kirada')),
      ]),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plakalar'),
      ),
      drawer: MyDrawer(),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 50,
            child: SearchBox(),
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 10 * 7,
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical, child: dataTable),
          ),
        ],
      ),
    );
  }
}
