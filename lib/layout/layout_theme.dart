import 'package:flutter/material.dart';

class LayoutColor {
/**
os nomes das cores podem ser modificados para algo mais claro, por exemplo "whiteSnow"
*/

  static MaterialColor primaryColor = MaterialColor(0xffe2001a, redCustom);
  static int _rp = 226; // red primary
  static int _gp = 0; // green primary
  static int _bp = 26; // blue primary
  static Map<int, Color> redCustom = // toms de cor
      {
    50: Color.fromRGBO(_rp, _gp, _bp, .1),
    100: Color.fromRGBO(_rp, _gp, _bp, .2),
    200: Color.fromRGBO(_rp, _gp, _bp, .3),
    300: Color.fromRGBO(_rp, _gp, _bp, .4),
    400: Color.fromRGBO(_rp, _gp, _bp, .5),
    500: Color.fromRGBO(_rp, _gp, _bp, .6),
    600: Color.fromRGBO(_rp, _gp, _bp, .7),
    700: Color.fromRGBO(_rp, _gp, _bp, .8),
    800: Color.fromRGBO(_rp, _gp, _bp, .9),
    900: Color.fromRGBO(_rp, _gp, _bp, 1),
  };

  static MaterialColor secondaryColor = MaterialColor(0xffffffff, whiteCustom);
  static int _rs = 0; // red secondary
  static int _gs = 0; // green secondary
  static int _bs = 100; // blue secondary
  static Map<int, Color> whiteCustom = // toms de cor
      {
    50: Color.fromRGBO(_rs, _gs, _bs, .1),
    100: Color.fromRGBO(_rs, _gs, _bs, .2),
    200: Color.fromRGBO(_rs, _gs, _bs, .3),
    300: Color.fromRGBO(_rs, _gs, _bs, .4),
    400: Color.fromRGBO(_rs, _gs, _bs, .5),
    500: Color.fromRGBO(_rs, _gs, _bs, .6),
    600: Color.fromRGBO(_rs, _gs, _bs, .7),
    700: Color.fromRGBO(_rs, _gs, _bs, .8),
    800: Color.fromRGBO(_rs, _gs, _bs, .9),
    900: Color.fromRGBO(_rs, _gs, _bs, 1),
  };

  static MaterialColor backgroundColor = MaterialColor(0xfffefdf9, paleCustom);
  static int _rb = 254; // red background
  static int _gb = 253; // green background
  static int _bb = 249; // blue background
  static Map<int, Color> paleCustom = // toms de cor
      {
    50: Color.fromRGBO(_rb, _gb, _bb, .1),
    100: Color.fromRGBO(_rb, _gb, _bb, .2),
    200: Color.fromRGBO(_rb, _gb, _bb, .3),
    300: Color.fromRGBO(_rb, _gb, _bb, .4),
    400: Color.fromRGBO(_rb, _gb, _bb, .5),
    500: Color.fromRGBO(_rb, _gb, _bb, .6),
    600: Color.fromRGBO(_rb, _gb, _bb, .7),
    700: Color.fromRGBO(_rb, _gb, _bb, .8),
    800: Color.fromRGBO(_rb, _gb, _bb, .9),
    900: Color.fromRGBO(_rb, _gb, _bb, 1),
  };
}
