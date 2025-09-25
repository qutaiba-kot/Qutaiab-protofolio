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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Icon(icon, size: sizes.iconSize, color: Colors.white),
          ),
          Flexible(
            child: Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              title,
              style: TextStyle(
                fontSize: sizes.titleSize,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Flexible(
            child: Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              subTitle,
              style: TextStyle(fontSize: sizes.subTitleSize, color: Colors.grey),
            ),
          ),
          Flexible(
            child: Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              body,
              style: TextStyle(fontSize: sizes.bodySize, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
