import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExperinceWidget extends StatelessWidget {
  final IconData icon;
  final String skill;
  final String level;
  final Color iconColor;

  const ExperinceWidget({
    super.key,
    required this.icon,
    required this.skill,
    required this.level,
    this.iconColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(icon, size: 40.r, color: iconColor),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Text(
              skill,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
            ),
            Text(level, style: TextStyle(fontSize: 16.sp)),
          ],
        ),
      ],
    );
  }
}
