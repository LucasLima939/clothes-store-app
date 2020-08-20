import 'package:flutter/material.dart';
import 'package:project_blu_k/layout/layout_theme.dart';
import 'package:project_blu_k/tabs/categories_tab.dart';
import 'package:project_blu_k/tabs/home_tab.dart';
import 'package:project_blu_k/widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _pageController = PageController();
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
        Scaffold(
          appBar: AppBar(
            backgroundColor: LayoutColor.primaryColor,
            title: Text("Nossas Lojas"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: Center(child: CircularProgressIndicator()),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: LayoutColor.primaryColor,
            title: Text("Seus Pedidos"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: Center(child: Text("Você ainda não possui nenhum pedido!")),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: LayoutColor.primaryColor,
            title: Text("Outlet"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: SafeArea(child: CategoriesTab()),
        ),
      ],
    );
  }
}
