import 'package:flutter/material.dart';
import 'package:project_blu_k/screens/maganize_screen.dart';

void main() => runApp(BluK());

class BluK extends StatelessWidget {
  final routes = <String, WidgetBuilder>{};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MagazinePage(),
      routes: routes,
    );
  }
}
