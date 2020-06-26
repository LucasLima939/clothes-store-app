import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_blu_k/layout/layout_theme.dart';
import 'package:project_blu_k/models/products_list.dart';

import '../trocar_layout.dart';

class MagazinePage extends StatefulWidget {
  @override
  _MagazinePageState createState() => _MagazinePageState();
}

class _MagazinePageState extends State<MagazinePage> {
  bool _showAppbar = true; //this is to show app bar
  ScrollController _scrollBottomBarController =
      new ScrollController(); // set controller on scrolling
  bool isScrollingDown = false;
  bool _show = true;
  double bottomBarHeight = 75; // set bottom bar height
  double _bottomBarOffset = 0;
  int indice = 0;

  @override
  void initState() {
    super.initState();
    myScroll();
  }

  @override
  void dispose() {
    _scrollBottomBarController.removeListener(() {});
    super.dispose();
  }

  void showBottomBar() {
    setState(() {
      _show = true;
    });
  }

  void hideBottomBar() {
    setState(() {
      _show = false;
    });
  }

  void myScroll() async {
    _scrollBottomBarController.addListener(() {
      if (_scrollBottomBarController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (isScrollingDown) {
          isScrollingDown = false;
          _showAppbar = true;
          showBottomBar();
        }
      }
      if (_scrollBottomBarController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          _showAppbar = false;
          hideBottomBar();
        }
      }
    });
  }

  Widget containterContent() {
    return Container(
      height: 50.0,
      color: Colors.cyanAccent,
      margin: EdgeInsets.all(8.0),
      width: MediaQuery.of(context).size.width - 100,
      child: Center(
          child: Text(
        'Item 1',
        style: TextStyle(
          fontSize: 14.0,
        ),
      )),
    );
  }

  Widget body() {
    return ListView.builder(
        controller: _scrollBottomBarController,
        scrollDirection: Axis.horizontal,
        itemCount: categorias.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => trocarLayout(
                            nome: categorias[index].nome,
                            foto: categorias[index].imagePath,
                            descricao: categorias[index].descricao,
                            preco: categorias[index].preco,
                          )));
            },
            child: Image.asset(
              categorias[index].imagePath,
              fit: BoxFit.cover,
            ),
          );
        });
  }

  _img(int index) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Image.asset(categorias[index].imagePath),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _showAppbar
          ? AppBar(
              title: Image.asset(
                'assets/logo/logo_blu_k.png',
                fit: BoxFit.cover,
              ),
              backgroundColor: LayoutColor.primaryColor,
              centerTitle: true,
            )
          : PreferredSize(
              child: Container(),
              preferredSize: Size(0.0, 0.0),
            ),
      bottomNavigationBar: Container(
        height: bottomBarHeight,
        width: MediaQuery.of(context).size.width,
        child: _show
            ? BottomNavigationBar(
                backgroundColor: LayoutColor.primaryColor,
                unselectedItemColor: LayoutColor.secondaryColor,
                fixedColor: LayoutColor.secondaryColor,
                currentIndex: 0, // this will be set when a new tab is tapped
                items: [
                  BottomNavigationBarItem(
                    icon: new Icon(Icons.mail),
                    title: new Text('Nos Contate'),
                    backgroundColor: Colors.red,
                  ),
                  BottomNavigationBarItem(
                    icon: new Icon(Icons.photo_album),
                    title: new Text('Revista Blu K'),
                    backgroundColor: Colors.red,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    title: Text('Perfil'),
                    backgroundColor: Colors.red,
                  )
                ],
              )
            : Container(
                // O QUE TÁ POR TRÁS DO BOTTOM
                color: LayoutColor.primaryColor,
                width: MediaQuery.of(context).size.width,
              ),
      ),

      body: body(),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
