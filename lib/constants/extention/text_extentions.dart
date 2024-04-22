import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:flutter/material.dart';

// class TexStyless{
//   TextStyless(this.context);
//   BuildContext? context;
//   static const TextStyle defaultStyle = TextStyle(
//
//   )
// }
class TextStyles {
  TextStyles(this.context);
  BuildContext? context;
  static const TextStyle defaultStyle = TextStyle(
    fontSize: 14,
    color: ColorPalette.textColor,
    fontWeight: FontWeight.w400,
    height: 16/14,
    fontFamily: 'MyFont',
  );
}
class TextStyless {
  TextStyless(this.context);
  BuildContext? context;
  static const TextStyle defaultStyle = TextStyle(
    fontSize: 24,
    color: ColorPalette.textColor,
    fontWeight: FontWeight.w700,
    height: 16/14,
    fontFamily: 'MyFont',

  );
}
extension ExtendedTextStyle on TextStyle {
  TextStyle get light {
    return copyWith(fontWeight: FontWeight.w300);
  }

  TextStyle get regular {
    return copyWith(fontWeight: FontWeight.w400);
  }

  TextStyle get italic {
    return copyWith(
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.italic,
    );
  }

  TextStyle get medium {
    return copyWith(fontWeight: FontWeight.w500);
  }

  TextStyle get fontHeader {
    return copyWith(
      fontSize: 20,
      height: 22 / 20,
    );
  }

  TextStyle get fontCaption {
    return copyWith(
      fontSize: 12,
      height: 12 / 10,
      fontFamily: 'Myfont'
    );
  }

  TextStyle get semibold {
    return copyWith(fontWeight: FontWeight.w600);
  }

  TextStyle get bold {
    return copyWith(fontWeight: FontWeight.w700);
  }

  TextStyle get textColor {
    return copyWith(color: ColorPalette.textColor);
  }

  TextStyle get primaryTextColor {
    return copyWith(color: ColorPalette.primaryBlue);
  }

  TextStyle get whiteTextColor {
    return copyWith(color: Colors.white);
  }


  // convenience functions
  TextStyle setColor(Color color) {
    return copyWith(color: color);
  }

  TextStyle setTextSize(double size) {
    return copyWith(fontSize: size);
  }
}
