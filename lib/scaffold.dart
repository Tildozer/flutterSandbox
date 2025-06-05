import "package:flutter/material.dart";
import "appBar.dart" as custom;
import "counter.dart";

class Scaffold extends StatelessWidget{
  const Scaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          custom.AppBar(
            title: Text(
              "Sandbox",
              style: Theme.of(context).primaryTextTheme.titleLarge
            ),
          ),
          Counter(),
        ],

      ),
    );
  }
}