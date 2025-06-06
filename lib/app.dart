import 'package:flutter/material.dart';
import "appBar.dart";
import "windowSelector.dart";
import "mainWindow.dart";

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sandbox",
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: TitleMenu(title: Text("Sandbox")),
          body: MainWindow(),
          bottomNavigationBar: WindowSelector(),
        ),
      ),
    );
  }
}
