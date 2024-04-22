import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';


class Test extends StatefulWidget {
  const Test({super.key});
  static String routeName = 'test_card';

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Card Swiper Demo"),
        ),
        body: Center(
          child: Swiper(
            viewportFraction: 0.8,
            fade: 0.2,
            scale: 0.7,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.blue,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Card $index",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              );
            },
            itemHeight: 200, // chiều cao của card
            itemWidth: 300,
          ),
        ),
      );
    }
  }
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Card Swiper Demo"),
//       ),
//       body: PageView.builder(
//         itemCount: 3,
//         itemBuilder: (BuildContext context, int index) {
//           return Center(
//             child: Card(
//               margin: EdgeInsets.symmetric(horizontal: 10.0),
//               child: Container(
//                 alignment: Alignment.center,
//                 child: Text(
//                   "Card ${index + 1}",
//                   style: TextStyle(fontSize: 24),
//                 ),
//               ),
//             ),
//           );
//         },
//         // viewportFraction: 0.8,
//
//       )
//     );
//   }
// }
