import "package:flutter/material.dart";

class TitleMenu extends StatelessWidget implements PreferredSizeWidget {
  const TitleMenu({required this.title, super.key});

  final Widget title;

  @override
  Size get preferredSize => Size(300, kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 24,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );

    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: preferredSize.height,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.black54),
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              tooltip: "Navigation menu",
              onPressed: () => print("hello"),
              color: Colors.white,
            ),
            Expanded(
              child: Center(
                child: DefaultTextStyle(style: textStyle, child: title),
              ),
            ),
            IconButton(
              icon: Icon(Icons.search),
              tooltip: "Search",
              onPressed: () => print("search"),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
