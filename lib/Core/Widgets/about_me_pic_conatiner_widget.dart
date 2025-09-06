import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutMePicConatinerWidget extends StatelessWidget {
 final bool isMobile;
  final bool isTablet;
  const AboutMePicConatinerWidget({super.key, required this.isMobile, required this.isTablet});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isMobile? 300.h : isTablet? 300.h: 500.h,
      width:isMobile? 350.h : isTablet? 1430.w: 650.w,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(isTablet ?190.r: isMobile ? 190.r:90.r)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(isMobile ? 190.r : isTablet ? 190.r : 60.r)),
        child: Image.asset("assets/files/1nedPic.jpg", fit: BoxFit.cover),
      ),
    );
  }
}
