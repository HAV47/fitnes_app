import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/extention/text_extentions.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/constants/helper/image_helper.dart';
import 'package:fitness_ui_ticket/ui/login_register/register_screen.dart';
import 'package:fitness_ui_ticket/widget/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pageController = PageController();
  int _curentpage = 0;

  @override
  Widget _buildItemSplashScreen(
    String image,
    String title,
    String description,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: ImageHelper.loadFromAsset(image,
              fit: BoxFit.fitHeight, height: 400),
        ),
        SizedBox(
          height: 24.w,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyless.defaultStyle.bold,
              ),
              SizedBox(
                height: 24.w,
              ),
              Text(
                description,
                style: TextStyles.defaultStyle,
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page){
                setState(() {
                  _curentpage = page;
                });
              },
              children: [
                _buildItemSplashScreen(AssetHelper.splash1, 'Track Your Goal',
                    'Don’t worry if you have trouble determining your goals, We can help you determine your goals and track your goals'),
                _buildItemSplashScreen(AssetHelper.splash2, 'Get Burn',
                    'Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever'),
                _buildItemSplashScreen(AssetHelper.splash3, 'Eat Well',
                    'Let\'s start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun'),
                _buildItemSplashScreen(AssetHelper.splash4, 'Improve Sleep Quality',
                    'Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning'),
              ],
            ),
          ),
          Row(
            children: [
              Spacer(),
              GestureDetector(
                onTap: (){
                  if (_curentpage == 3) {
                   Navigator.of(context).pushNamed(RegisterScreen.routeName);
                  }else{
                    _pageController.nextPage(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeInOut);
                  }

                },
                child: Container(
                  height: 50.w,
                  width: 50.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: Gradients.blueLinear,
                  ),
                  child: Icon(Icons.arrow_forward_ios,size: 18,color: Colors.white,),

                ),
              ),
            ],
          ),
          // ButtonWidget(
          //   title: 'title',
          //   onTap: () {
          //     _pageController.nextPage(
          //         duration: Duration(milliseconds: 200),
          //         curve: Curves.easeInOut);
          //   },
          // ),
        ],
      ),
    );
  }
}
