import 'package:flutter/material.dart';
import 'package:project_blu_k/layout/layout_theme.dart';
import 'package:project_blu_k/widgets/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  final PageController pageController;
  CustomDrawer(this.pageController);
  @override
  Widget build(BuildContext context) {
    Widget _buildDrawerBack() => Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [LayoutColor.primaryColor, LayoutColor.secondaryColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
        );
    return Drawer(
      child: Stack(
        children: <Widget>[
          _buildDrawerBack(),
          ListView(
            padding: EdgeInsets.only(left: 32.0, top: 16.0),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
                height: 170.0,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 8.0,
                      left: 0.0,
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/model-project-3688a.appspot.com/o/blu_k_logo.png?alt=media&token=d55778e9-106c-4398-9be1-db01fed4cc4f'),
                    ),
                    Positioned(
                      left: 0.0,
                      bottom: 0.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Olá,",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            child: Text(
                              "Entre ou cadastre-se >",
                              style: TextStyle(
                                color: LayoutColor.secondaryColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {},
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              DrawerTile(Icons.home, "Início", pageController, 0),
              DrawerTile(Icons.list, "Nossos Produtos", pageController, 1),
              DrawerTile(Icons.location_on, "Nossas Lojas", pageController, 2),
              DrawerTile(
                  Icons.playlist_add_check, "Seus Pedidos", pageController, 3),
              DrawerTile(Icons.monetization_on, "Outlet", pageController, 4),
            ],
          )
        ],
      ),
    );
  }
}
