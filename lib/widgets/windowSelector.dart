import 'package:flutter/material.dart';

class WindowSelector extends StatelessWidget {
  const WindowSelector({required this.controller, super.key});

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      tabs: const [
        Tab(icon: Icon(Icons.account_box_outlined), text: "counter"),
        Tab(icon: Icon(Icons.nearby_off_outlined), text: "page2"),
        Tab(icon: Icon(Icons.g_translate_sharp), text: "page3"),
      ],
    );
  }
}
