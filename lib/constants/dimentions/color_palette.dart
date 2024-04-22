import 'package:flutter/cupertino.dart';

class ColorPalette {
  static const Color primaryBlue = Color(0xff92A3FD);
  static const Color secondBlue = Color(0xff9DCEFF);
  static const Color primaryPurple = Color(0xffC58BF2);
  static const Color secondPurple = Color(0xffEEA4CE);
  static const Color danger = Color(0xffFF0000);
  static const Color black = Color(0xff1D1617);
  static const Color white = Color(0xffFFFFFF);
  static const Color gray1 = Color(0xff7B6F72);
  static const Color gray2 = Color(0xffADA4A5);
  static const Color gray3 = Color(0xffDDDADA);
  static const Color linearBlue = Color(0xff9DCEFF);
  static const Color textColor = Color(0xFF323B4B);
  static const Color borderColor = Color(0xffF7F8F8);
  static const Color backgroundScaffoldColor = Color(0xFFF2F2F2);


}

class Gradients {
  static const Gradient blueLinear = LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [
        ColorPalette.primaryBlue,
        ColorPalette.secondBlue,
      ]);
  static const Gradient purpleLinear = LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [
        ColorPalette.primaryPurple,
        ColorPalette.secondPurple,
      ]);
}
