import 'package:flutter/material.dart';
import "widgets/appBar.dart";
import "widgets/windowSelector.dart";
import "widgets/mainWindow.dart";

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with TickerProviderStateMixin {
  late TabController _tabController;
  int _currIdx = 0;

  final List<String> _titles = ["Sandbox", "Page 2", "Page 3"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _titles.length, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currIdx = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sandbox",
      home: DefaultTabController(
        length: _titles.length,
        child: Scaffold(
          appBar: TitleMenu(title: Text(_titles[_currIdx])),
          body: MainWindow(controller: _tabController,),
          bottomNavigationBar: WindowSelector(controller: _tabController),
        ),
      ),
    );
  }
}
