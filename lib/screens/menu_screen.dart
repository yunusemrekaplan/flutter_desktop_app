// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:desktop_app/screens/plates_screen.dart';
import 'package:flutter/material.dart';

import 'cars_screen.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Galeri'),
          ),
          drawer: Drawer(
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
              ],
            ),
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Yunus Emre Kaplan'),
                      Text('Personel'),
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
