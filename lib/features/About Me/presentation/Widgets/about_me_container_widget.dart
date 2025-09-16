import 'package:flutter/material.dart';
import '../../Responsive Helper/about_me_responsive.dart';

class AboutMeContainerWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  final String body;
  final double height;
  final double width;
  final bool isMobile;
  final bool isTablet;
  const AboutMeContainerWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.body,
    required this.height,
    required this.width,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    final sizes = AboutMeResponsive(isMobile: isMobile, isTablet: isTablet, height: height, width: width);
    return Container(
      height: sizes.containerHeight,
      width: sizes.containerWidth,
      decoration: BoxDecoration(
        color:Colors.blue.withOpacity(0.0),
        border: Border.all(color: Colors.white, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: sizes.iconSize, color: Colors.white),
          Text(
            title,
            style: TextStyle(
              fontSize: sizes.titleSize,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subTitle,
            style: TextStyle(fontSize: sizes.subTitleSize, color: Colors.grey),
          ),
          Text(
            body,
            style: TextStyle(fontSize: sizes.bodySize, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
