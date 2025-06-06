import 'package:flutter/material.dart';
import "counter.dart";

class MainWindow extends StatelessWidget {
  const MainWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Counter(),
        Icon(Icons.face_2_outlined),
        Icon(Icons.ac_unit_sharp),
      ],
    );
  }
}
