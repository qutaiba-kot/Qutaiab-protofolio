import 'package:flutter/material.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
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
    final sizes = AboutMeResponsive(
      isMobile: isMobile,
      isTablet: isTablet,
      height: height,
      width: width,
    );
    return Container(
      height: sizes.containerHeight,
      width: sizes.containerWidth,
      decoration: BoxDecoration(
        color: AppColors.secondary,
        border: Border.all(color: Colors.transparent, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 25, color: Colors.white),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              Text(
                body,
                style: TextStyle(fontSize:15, color: Colors.grey),
              ),
          ],
        ),
      ),
    );
  }
}
