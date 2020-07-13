import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

import 'layout/layout_theme.dart';

class CounterIcon extends StatefulWidget {
  @override
  _CounterIconState createState() => _CounterIconState();
}

class _CounterIconState extends State<CounterIcon> {
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
