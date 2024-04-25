import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/widget/appbar_dashboard_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  static String routeName = 'notification_screen';

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      body: Column(
        children: [
          AppbarDashboardWidget(
            title: 'Notification',
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 20, 0, 0).w,
            child: Column(
              children: [
                notification(AssetHelper.n1,'Hey, it’s time for lunch','About 1 minutes ago'),
                Divider(),
                notification(AssetHelper.n2,'Don’t miss your lowerbody workout','About 3 hours ago'),
                Divider(),
                notification(AssetHelper.n3,'Hey, let’s add some meals for your b..','About 3 hours ago'),
                Divider(),
                notification(AssetHelper.n4,'Congratulations, You have finished A..','29 May'),
                Divider(),
                notification(AssetHelper.n5,'Hey, it’s time for lunch','8 April'),
                Divider(),
                notification(AssetHelper.n6,'Ups, You have missed your Lowerbo...','3 April'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget notification(String image, String title, String subtitle) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage(image)),
      title: Text(title,
          style: TextStyle(
              fontFamily: 'MyfontMedium',
              fontSize: 12.sp,
              fontWeight: FontWeight.w500)),
      subtitle: Text(subtitle,
          style: TextStyle(
              fontFamily: 'MyfontMedium',
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
              color: ColorPalette.gray1)),
      trailing: Icon(Icons.more_vert),
    );
  }
}
