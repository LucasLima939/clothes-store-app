import 'package:flutter/material.dart';
import 'package:project_blu_k/layout/layout_theme.dart';
import 'package:project_blu_k/tabs/categories_tab.dart';
import 'package:project_blu_k/tabs/home_tab.dart';
import 'package:project_blu_k/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  final _pageController =
      PageController(); // para controler a página pelo código
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: LayoutColor.primaryColor,
            title: Text("Nossos produtos"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: SafeArea(child: CategoriesTab()),
        ),
        Container(
          color: Colors.white,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.grey,
        ),
      ],
    );
  }
}
