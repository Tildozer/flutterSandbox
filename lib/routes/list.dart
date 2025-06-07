import "package:flutter/material.dart";

class ListMaker extends StatelessWidget {
  const ListMaker({this.count = 10, super.key});

  final int count;

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];

    for (var i = 0; i < count; i++) {
      var idx = i + 1;
      items.add(
        ListTile(
          title: Text(
            'Item $idx',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          tileColor: Colors.grey[100],
          selectedTileColor: Colors.blue[50],
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.grey[300]!, width: 1),
          ),
        ),
      );
    }

    return ListView(children: items);
  }
}
