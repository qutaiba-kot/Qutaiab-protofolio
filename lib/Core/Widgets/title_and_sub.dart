import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/main_animation.dart';
import 'package:protofolio/Core/Sizer/main_sizer.dart';

class TitleAndSub extends StatelessWidget {
 final MainSizer mainSizer; 
 final String title ; 
 final String subTitle ;
  const TitleAndSub({super.key,required this.mainSizer, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return MainAnimation(
      delay: const Duration(milliseconds: 400),
      child: Column(
        children: [
          SizedBox(height:mainSizer.isTablet || mainSizer.isMobile ? mainSizer.height*0.06 : mainSizer.height*0.1,),
          SizedBox(
            height:  mainSizer.height*0.1,
            width:mainSizer.isTablet || mainSizer.isMobile?  mainSizer.width*0.25 : mainSizer.width*0.1,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Column(
                spacing: 10,
                children: [
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
          ),
        ],
      ),
    );
  }
}
