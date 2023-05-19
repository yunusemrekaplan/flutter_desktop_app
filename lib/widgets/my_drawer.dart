import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyDrawer();
}

class _MyDrawer extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          IconButton(
            onPressed: () => Navigator.pushNamed(context, 'menu'),
            icon: const Icon(Icons.house),
            iconSize: 40,
            alignment: Alignment.center,
          ),
          ListTile(
            title: const Text('Plakalar'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, 'plates-screen', (route) => false);
            },
          ),
          ListTile(
            title: const Text('Araçlar'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, 'cars-screen', (route) => false);
            },
          ),
          ListTile(
            title: const Text('Personeller'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, 'person-screen', (route) => false);
            },
          ),
          ListTile(
            title: const Text('Araç Kirala'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, 'contract-screen', (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
