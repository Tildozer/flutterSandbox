import 'package:flutter/material.dart';

class WindowSelector extends StatelessWidget {
  const WindowSelector({required this.controller, super.key});

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: controller.index,
      onTap: (index) => controller.animateTo(index),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined), label: "counter"),
        BottomNavigationBarItem(icon: Icon(Icons.nearby_off_outlined), label: "page2"),
        BottomNavigationBarItem(icon: Icon(Icons.g_translate_sharp), label: "page3"),
      ],
    );
  }
}
