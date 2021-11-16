import 'dart:ui';

import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String titulo;
  final double? toolbarHeight;
  final Widget? leadingWidget;
  final IconData? icon;
  final Widget? login;

  const AppBarWidget({
    Key? key,
    required this.titulo,
    this.leadingWidget,
    this.icon,
    this.login,
    this.toolbarHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: EdgeInsets.only(
          right: MediaQuery.of(context).size.width * 0.15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Icon(icon),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Text(titulo, style: TextStyle(fontSize: 36),),
            ),
          ],
        ),
      ),
      leading: leadingWidget,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Container(
            child: login,
          ),
        )
      ],
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient:LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Colors.red.shade500,
            Colors.red.shade900,
          ]),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight ?? kToolbarHeight);
}
