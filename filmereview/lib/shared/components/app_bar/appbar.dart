import 'dart:ui';

import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  //final Image logo;
  final String tituloLogo;
  final double? toolbarHeight;
  final Widget? leadingWidget;
  final IconData? icon;
  final Widget? actionWidget;

  const AppBarWidget({
    Key? key,
    //required this.logo,
    required this.tituloLogo,
    this.leadingWidget,
    this.icon,
    this.actionWidget,
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
          children: [
            Container(
              child: Icon(icon),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Text(tituloLogo),
            ),
          ],
        ),
      ),
      leading: leadingWidget,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Container(
            child: actionWidget,
          ),
        )
      ],
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient:LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color(0xFF02268F),
            Color(0xFF0264FF),
          ]) ,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight ?? kToolbarHeight);
}
