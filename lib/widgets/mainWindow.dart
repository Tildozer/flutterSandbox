import 'package:flutter/material.dart';
import 'package:sandbox/routes/home.dart';

class MainWindow extends StatelessWidget {
  const MainWindow({required this.controller, super.key});

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
      children: [
        Home(),
        Icon(Icons.face_2_outlined),
        Icon(Icons.ac_unit_sharp),
      ],
    );
  }
}
