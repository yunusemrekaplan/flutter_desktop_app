// ignore_for_file: prefer_const_constructors

import 'package:desktop_app/screens/cars_screen.dart';
import 'package:desktop_app/screens/contract_screen.dart';
import 'package:desktop_app/screens/login_screen.dart';
import 'package:desktop_app/screens/menu_screen.dart';
import 'package:desktop_app/screens/person_screen.dart';
import 'package:desktop_app/screens/plates_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DesktopApp());
}

class DesktopApp extends StatelessWidget {
  const DesktopApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Takip Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      routes: {
        '/': (BuildContext context) => LoginScreen(),
        'menu': (BuildContext context) => MenuScreen(),
        'cars-screen': (BuildContext context) => CarsScreen(),
        'plates-screen': (BuildContext context) => PlatesScreen(),
        'person-screen': (BuildContext context) => PersonScreen(),
        'contract-screen': (BuildContext context) => ContractScreen(),
      },
      initialRoute: 'contract-screen',
    );
  }
}
