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
    return HomeAnimation(
      beginOffset: Offset(0, -1),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          spacing: 10,
          children: [
            SizedBox(height: isMobile || isTablet ?  height * 0.07 : height * 0.15 ),
            Text(
              title,
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            Text(
              subTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}
