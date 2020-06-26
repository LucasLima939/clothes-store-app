import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

import 'layout/layout_theme.dart';

class BottomIcons extends StatefulWidget {
  @override
  _BottomIconsState createState() => _BottomIconsState();
}

Widget trocarLayout(
    {String nome, String foto, String descricao, double preco}) {
  return Scaffold(
    resizeToAvoidBottomInset: false,
    appBar: AppBar(
      iconTheme: IconThemeData(color: LayoutColor.secondaryColor),
      title: Image.asset(
        'assets/logo/logo_blu_k.png',
        fit: BoxFit.cover,
      ),
      backgroundColor: LayoutColor.primaryColor,
      centerTitle: true,
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.shopping_basket,
              color: LayoutColor.secondaryColor,
            ),
            onPressed: () {})
      ],
    ),
    body: Center(
      child: Container(
        decoration: BoxDecoration(
          color: LayoutColor.primaryColor,
        ),
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: LayoutColor.secondaryColor,
          ),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ), //Altura do topo até a foto.
                Container(
                  decoration: BoxDecoration(color: Colors.black),
                  width: 180, // largura
                  height: 300, // altura
                  padding: EdgeInsets.all(2),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(foto), //A foto do produto.
                            fit: BoxFit.cover)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  nome,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                    color: Colors.red,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: Text(
                    'R\$$preco', // $ = Caracter especial, portante tem q ter o '\'.
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                      color: Colors.black,
                      letterSpacing: 1.0,
                      fontSize: 20.0,
                    )),
                  ),
                ),
                Container(
                  //color: Colors.black,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 32, right: 32),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        descricao, //DESCRIÇÃO
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Colors.red,
                            letterSpacing: 1.0,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //SizedBox(height: 103.0,),//Espaço entre texto e bottomIcons.
                Expanded(
                    child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: BottomIcons(),
                )),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

class _BottomIconsState extends State<BottomIcons> {
  @override
  int _counter = 0;

  void longDecrement() {
    setState(() {
      if (_counter == 0) {
        _counter = 0;
      }
      if (_counter - 10 < 0) {
        _counter = 0;
      } else {
        _counter -= 10;
      }
    });
  }

  void longIncrement() {
    setState(() {
      if (_counter == 99) {
        _counter = 99;
      }
      if (_counter > 99) {
        _counter = 99;
      } else {
        _counter += 10;
      }
    });
  }

  void increment() {
    setState(() {
      if (_counter == 99) {
        _counter = 99;
      } else {
        _counter++;
      }
    });
  }

  void decrement() {
    setState(() {
      if (_counter == 0)
        _counter = 0;
      else {
        _counter--;
      }
    });
  }

  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        //color: Colors.green,
        height: 100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Container(
                      width: 37.0,
                      height: 30.0,
                      child: FlatButton(
                        //BUTÃO MENOS
                        padding: const EdgeInsets.only(right: 5.0),
                        onPressed: decrement,
                        onLongPress: longDecrement,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        //color: Colors.green,
                        child: Icon(
                          Icons.remove,
                          color: LayoutColor.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5),

                    width: 37.0, //tem que ser exatamente 47.
                    alignment: Alignment.center,
                    child: Text(
                      '$_counter',
                      style: TextStyle(fontSize: 27.0, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 25.0, //diminui pra caber o 'adicionar ao Carrinho'.
                    height: 30.0,
                    child: FlatButton(
                      //BUTÃO MAIS
                      padding: const EdgeInsets.only(right: 15.0),
                      onPressed: increment,
                      onLongPress: longIncrement,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Icon(
                        Icons.add,
                        color: LayoutColor.primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: OutlineButton(
                        highlightedBorderColor: LayoutColor.primaryColor,
                        textColor: Colors.white,
                        borderSide: BorderSide(color: LayoutColor.primaryColor),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          'Adicionar ao Carrinho',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
