import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutMeContainerWidget extends StatelessWidget {
  final IconData icon ;
  final String title ; 
  final String subTitle;
  final String body;
  final bool isMobile;
  final bool isTablet;
  const AboutMeContainerWidget({super.key, required this.icon, required this.title, required this.subTitle, required this.body, required this.isMobile, required this.isTablet});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isMobile?  150.h :isTablet? 150.h:200.h,
      width:  isMobile?  700.w :isTablet? 700.w:400.w,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size:isMobile?  90.r : isTablet? 100.r:30.r, color: Colors.black),
          Text(
            title,
            style: TextStyle(
              fontSize: isMobile?  60.sp :isTablet? 20.sp:20.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subTitle,
            style:  TextStyle( fontSize: isMobile?  50.sp :isTablet? 50.sp:20.sp, color: Colors.grey),
          ),
          Text(
            body,
            style: TextStyle(fontSize: isMobile?  60.sp :isTablet? 50.sp:20.sp, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
