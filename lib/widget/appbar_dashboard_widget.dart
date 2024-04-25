import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppbarDashboardWidget extends StatelessWidget {
  const AppbarDashboardWidget({super.key, this.title});


  final String? title;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100.w,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 0).w,
              child: AppBar(
                backgroundColor: ColorPalette.white,
                leading: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(AssetHelper.iconBackAppbar)),
                automaticallyImplyLeading: false,
                centerTitle: true,
                actions: [Image.asset(AssetHelper.iconAppbarRight)],
                title: Text(
                  '${title}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'MyfontBold'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
