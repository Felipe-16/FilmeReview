import 'package:filmereview/app/modules/home/home_module.dart';
import 'package:filmereview/app/modules/home/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PocPloc Movies',
      theme: ThemeData(
        fontFamily: 'Roboto',
        appBarTheme: AppBarTheme(
            color: Colors.red,
            centerTitle: true,
          ),
      ),
      home: HomePage(),
    );
  }
}
