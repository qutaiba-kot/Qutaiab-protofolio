import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExperinceWidget extends StatelessWidget {
  final IconData icon;
  final String skill;
  final String level;
  final Color iconColor;
  final bool isMobile;
  final bool isTablet;

  const ExperinceWidget({
    super.key,
    required this.icon,
    required this.skill,
    required this.level,
    this.iconColor = Colors.black,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          size: isMobile
              ? 100.r
              : isTablet
              ? 60.r
              : 40.r,
          color: iconColor,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              skill,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: isMobile
                    ? 50.sp
                    : isTablet
                    ? 40.sp
                    : 20.sp,
              ),
            ),
            Text(
              level,
              style: TextStyle(
                fontSize: isMobile
                    ? 40.sp
                    : isTablet
                    ? 30.sp
                    : 16.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
