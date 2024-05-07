import 'package:dotted_line/dotted_line.dart';
import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:flutter/cupertino.dart';

class DotlineWidget extends StatelessWidget {
   DotlineWidget({super.key,this.highlight});
bool? highlight;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DottedLine(
        direction: Axis.vertical,
        dashColor: highlight == true ? Color(0xFFEEA4CE) : ColorPalette.gray2,
        dashLength: 5,
        dashGapLength: 5,
        // lineThickness: 5,
        dashRadius: 50,
      ),
    );
  }
}
