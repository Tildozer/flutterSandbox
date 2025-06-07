import "package:flutter/material.dart";

class ListMaker extends StatelessWidget {
  const ListMaker({this.count = 10, super.key});

  final int count;

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];

    for (var i = 0; i <= count; i++) {
      items.add(ListTile(title: Text('Item $i'), style: ListTileStyle.list));
    }

    return ListView(children: items);
  }
}
