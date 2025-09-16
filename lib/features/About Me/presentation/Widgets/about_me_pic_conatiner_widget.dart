import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
import 'package:protofolio/features/About%20Me/Responsive%20Helper/about_me_responsive.dart';

class AboutMePicConatinerWidget extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile;
  final bool isTablet;
  const AboutMePicConatinerWidget({
    super.key,
    required this.height,
    required this.width, required this.isMobile, required this.isTablet,
  });
  @override
  Widget build(BuildContext context) {
    final sizes = PicSizes(
  isMobile: isMobile,
  isTablet: isTablet,
  screenHeight: height,
  screenWidth: width,
);
    return HomeAnimation(
      beginOffset: Offset(-1, 0),
      child: Container(
        height: sizes.height,
        width: sizes.width,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(60)),
          child: Image.asset("assets/files/1nedPic.jpg", fit: BoxFit.cover),
        ),
      ),
    );
  }
}
