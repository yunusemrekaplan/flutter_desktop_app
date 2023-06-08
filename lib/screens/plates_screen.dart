// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:desktop_app/screens/plate_dashboard_screen.dart';
import 'package:desktop_app/widgets/my_drawer.dart';
import 'package:desktop_app/widgets/plates_screen_widgets/plates_screen_body.dart';
import 'package:flutter/material.dart';

import '../widgets/search_box.dart';

class PlatesScreen extends StatefulWidget {
  const PlatesScreen({super.key});

  @override
  State<StatefulWidget> createState() => _PlatesScreen();
}

class _PlatesScreen extends State<PlatesScreen> {
  @override
  Widget build(BuildContext context) {
    DataTable dataTable = DataTable(
      columns: [
        DataColumn(label: Text('Plaka')),
        DataColumn(label: Text('Fiyat')),
        DataColumn(label: Text('Durum')),
      ],
      rows: [
        DataRow(cells: [
          DataCell(
            Text('34 AA 0000'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => PlateDashboardScreen()),
              );
            },
          ),
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plakalar'),
      ),
      drawer: MyDrawer(),
      body: PlatesScreenBody(
        dataTable: dataTable,
      ),
    );
  }
}
