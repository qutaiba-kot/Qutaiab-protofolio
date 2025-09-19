import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';

class TitleAndSub extends StatelessWidget {
 final bool isMobile ;
 final bool isTablet ; 
 final double height ; 
 final double width ; 
 final String title ; 
 final String subTitle ;
  const TitleAndSub({super.key, required this.isMobile, required this.isTablet, required this.height, required this.width, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    final double titleFontSize = isMobile
              ? (width*height) * 0.000040
              : isTablet
              ? (width*height) * 0.000019
              : (width*height) * 0.000012;
          final double subTitleFontSize = isMobile
              ? (width*height) * 0.00006
              : isTablet
              ? (width*height) * 0.00004
              : (width*height) * 0.000019;
    return HomeAnimation(
      beginOffset: Offset(0, -1),
      child: Container(
        child:  Column(
          children: [
            SizedBox(height: height * 0.07),
            Text(
              title,
              style: TextStyle(color: Colors.grey, fontSize: titleFontSize),
            ),
            SizedBox(height: height * 0.01),
            Text(
              subTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: subTitleFontSize,
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}
