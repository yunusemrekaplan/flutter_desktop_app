// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:desktop_app/widgets/cars_screen_widgets/cars_screen_body.dart';
import 'package:desktop_app/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class CarsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CarsScreen();
}

class _CarsScreen extends State<CarsScreen> {
  DataTable dataTable = DataTable(
    columns: [
      DataColumn(label: Text('Plaka')),
      DataColumn(label: Text('Marka')),
      DataColumn(label: Text('Model')),
      DataColumn(label: Text('Yıl')),
      DataColumn(label: Text('Vites')),
    ],
    rows: [
      DataRow(cells: [
        DataCell(Text('34 AA 0000'), onTap: () {}),
        DataCell(Text('Opel'), onTap: () {}),
        DataCell(Text('Astra')),
        DataCell(Text('2019')),
        DataCell(Text('Otomatik')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000'), onTap: () {}),
        DataCell(Text('Opel'), onTap: () {}),
        DataCell(Text('Astra')),
        DataCell(Text('2019')),
        DataCell(Text('Otomatik')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000'), onTap: () {}),
        DataCell(Text('Opel'), onTap: () {}),
        DataCell(Text('Astra')),
        DataCell(Text('2019')),
        DataCell(Text('Otomatik')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000'), onTap: () {}),
        DataCell(Text('Opel'), onTap: () {}),
        DataCell(Text('Astra')),
        DataCell(Text('2019')),
        DataCell(Text('Otomatik')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000'), onTap: () {}),
        DataCell(Text('Opel'), onTap: () {}),
        DataCell(Text('Astra')),
        DataCell(Text('2019')),
        DataCell(Text('Otomatik')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000'), onTap: () {}),
        DataCell(Text('Opel'), onTap: () {}),
        DataCell(Text('Astra')),
        DataCell(Text('2019')),
        DataCell(Text('Otomatik')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000'), onTap: () {}),
        DataCell(Text('Opel'), onTap: () {}),
        DataCell(Text('Astra')),
        DataCell(Text('2019')),
        DataCell(Text('Otomatik')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000'), onTap: () {}),
        DataCell(Text('Opel'), onTap: () {}),
        DataCell(Text('Astra')),
        DataCell(Text('2019')),
        DataCell(Text('Otomatik')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000'), onTap: () {}),
        DataCell(Text('Opel'), onTap: () {}),
        DataCell(Text('Astra')),
        DataCell(Text('2019')),
        DataCell(Text('Otomatik')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000'), onTap: () {}),
        DataCell(Text('Opel'), onTap: () {}),
        DataCell(Text('Astra')),
        DataCell(Text('2019')),
        DataCell(Text('Otomatik')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000'), onTap: () {}),
        DataCell(Text('Opel'), onTap: () {}),
        DataCell(Text('Astra')),
        DataCell(Text('2019')),
        DataCell(Text('Manuel')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000'), onTap: () {}),
        DataCell(Text('Opel'), onTap: () {}),
        DataCell(Text('Astra')),
        DataCell(Text('2019')),
        DataCell(Text('Otomatik')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000'), onTap: () {}),
        DataCell(Text('Opel'), onTap: () {}),
        DataCell(Text('Astra')),
        DataCell(Text('2019')),
        DataCell(Text('Otomatik')),
      ]),
      DataRow(cells: [
        DataCell(Text('34 AA 0000'), onTap: () {}),
        DataCell(Text('Opel'), onTap: () {}),
        DataCell(Text('Astra')),
        DataCell(Text('2019')),
        DataCell(Text('Otomatik')),
      ]),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Araçlar'),
      ),
      drawer: MyDrawer(),
      body: CarsScreenBody(
        dataTable: dataTable,
      ),
    );
  }
}
