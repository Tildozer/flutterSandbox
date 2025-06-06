import 'package:flutter/material.dart';
import "appBar.dart";
import "counter.dart";

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sandbox",
      // home: SafeArea(child: custom.Scaffold()),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: MainMenu(title: Text("Sandbox")),
        ),
      ),
    );
  }
}
