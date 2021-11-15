import 'package:filmereview/shared/components/app_bar/appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        tituloLogo: 'Home',
        icon: Icons.local_movies,
      ),
    );
  }
}
