import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/extention/text_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppbarContainerWidget extends StatelessWidget {
  const AppbarContainerWidget(
      {super.key,

      this.subTiltle,
      this.iconLeft ,
      this.iconRight ,
      this.image,this.centerTitle,
      this.titleString});


  final String? subTiltle, titleString;
  final Widget? iconLeft, iconRight;
  final String? image;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorPalette.white,
      child: Stack(
        children: [
          Container(
            height: 100.w,
            child: AppBar(
              backgroundColor: ColorPalette.white,
              leading: iconLeft,
              title: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: '${subTiltle ?? ''}',style: TextStyles.defaultStyle,
                  children: <TextSpan>[
                    // TextSpan(text: '\n'),
                    TextSpan(text: '\n${ titleString?? ''}',style: TextStyles.defaultStyle.fontHeader.bold),
                  ],
                ),
              ),
              centerTitle: true,
              automaticallyImplyLeading: false,
              // title: subTiltle!='' ? Column(
              //   children: [
              //     Text(subTiltle ?? '',),
              //     Text(titleString ?? '')
              //   ],
              // ) : Row(
              //   children: [
              //     // Text(subTiltle ?? '',),
              //     Text(titleString ?? '')
              //   ],
              // ),
              // centerTitle: centerTitle ?? false,
            ),
          ),
        ],
      ),
    );
  }
}
