import 'package:flutter/material.dart';
import 'package:protofolio/features/Experince/Responsive%20Helper/about_me_responsive.dart';

class ExperinceWidget extends StatelessWidget {
  final IconData icon;
  final String skill;
  final String level;
  final Color iconColor;
  final double height;
  final double width;
  final bool isMobile;
  final bool isTablet;

  const ExperinceWidget({
    super.key,
    required this.icon,
    required this.skill,
    required this.level,
    this.iconColor = Colors.white,
    required this.height,
    required this.width, required this.isMobile, required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    final sizes = ExperienceSizes(
      isMobile: isMobile,
      height: height,
      width: width,
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(icon, size: sizes.iconSize, color: iconColor),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              skill,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: sizes.title,
                color: Colors.white
              ),
            ),
            Text(
              level,
              style: TextStyle(fontSize: sizes.subTitle , color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
