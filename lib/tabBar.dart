import 'package:flutter/material.dart';

class WindowSelector extends StatelessWidget {
  WindowSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      tabs: [
        Tab(icon: Icon(Icons.account_box_outlined), text: "page1"),
        Tab(icon: Icon(Icons.nearby_off_outlined), text: "page2"),
        Tab(icon: Icon(Icons.g_translate_sharp), text: "page3"),
      ],
    );
  }
}
