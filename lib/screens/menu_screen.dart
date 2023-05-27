import 'package:flutter/material.dart';

import '../widgets/my_drawer.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeri'),
      ),
      drawer: MyDrawer(),
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
      ),
    );
  }
}
