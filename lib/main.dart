import 'package:flutter/material.dart';
import "scaffold.dart" as custom;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Sandbox",
      home: SafeArea(child: custom.Scaffold())
    );
  }
}
