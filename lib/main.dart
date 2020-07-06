import 'package:flutter/material.dart';
import 'package:project_blu_k/screens/home_screen.dart';
import 'package:project_blu_k/screens/maganize_screen.dart';
import 'package:project_blu_k/tabs/home_tab.dart';

void main() => runApp(BluK());

class BluK extends StatelessWidget {
  final routes = <String, WidgetBuilder>{};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Revista Blu K",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(iconTheme: IconThemeData(color: Colors.black87)),
      home: HomeScreen(),
      routes: routes,
    );
  }
}
