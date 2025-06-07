import "package:flutter/material.dart";
import "package:flutter/services.dart";

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

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
    );

    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: 200,
        decoration: BoxDecoration(color: Colors.black87),
        padding: const EdgeInsets.only(bottom: 0, top: 12,),
        margin: const EdgeInsets.only(bottom: 8),
        child: Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: DefaultTextStyle(style: textStyle, child: title),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
