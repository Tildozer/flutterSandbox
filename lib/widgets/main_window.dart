import 'package:flutter/material.dart';
import 'package:sandbox/routes/home.dart';
import 'package:sandbox/routes/list.dart';

class MainWindow extends StatelessWidget {
  const MainWindow({required this.controller, super.key});

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
      children: [
        Home(),
        ListMaker(count: 40),
        Icon(Icons.ac_unit_sharp),
      ],
    );
  }
}
