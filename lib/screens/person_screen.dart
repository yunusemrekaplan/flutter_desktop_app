import 'package:desktop_app/widgets/person_screen_widgets/person_screen_body.dart';
import 'package:flutter/material.dart';

import '../widgets/my_drawer.dart';

class PersonScreen extends StatefulWidget {
  const PersonScreen({super.key});

  @override
  State<StatefulWidget> createState() => _PersonScreen();
}

class _PersonScreen extends State<PersonScreen> {
  DataTable dataTable = DataTable(
    columns: [
      DataColumn(label: Text('Ad')),
      DataColumn(label: Text('Soyad')),
      DataColumn(label: Text('Yaş')),
    ],
    rows: [
      DataRow(cells: [
        DataCell(Text('Yunus Emre')),
        DataCell(Text('Kaplan')),
        DataCell(Text('20')),
      ]),
      DataRow(cells: [
        DataCell(Text('İsmail Yiğit')),
        DataCell(Text('Sakallı')),
        DataCell(Text('21')),
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
      body: PersonScreenBody(
        dataTable: dataTable,
      ),
    );
  }
}
