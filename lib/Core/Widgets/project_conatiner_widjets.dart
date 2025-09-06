import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectConatinerWidjets extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  const ProjectConatinerWidjets({
    super.key,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1.w),
        borderRadius: BorderRadius.all(Radius.circular(40.r)),
      ),
      height: isMobile ? 340.h : isTablet ? 370.h:500.h,
      width: isMobile ? 600.w : isTablet ? 620.w:400.w,
      child: Column(
        children: [
          SizedBox(height: 20.h),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 3.w),
              borderRadius: BorderRadius.all(Radius.circular(40.r)),
            ),
            height: isMobile ? 190.h : isTablet ? 200.h: 300.h,
            width: isMobile ? 340.w : isTablet ? 450.w:250.w,
          ),
          SizedBox(height: 20.h),
          Text(
            "Project Name",
            style: TextStyle(fontSize: isMobile ? 35.sp :isTablet ? 42.sp: 23.sp),
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 1.w),
                  borderRadius: BorderRadius.all(Radius.circular(40.r)),
                ),
                height: isMobile ? 30.h : isTablet ? 40.h:60.h,
                width: isMobile ? 250.w :isTablet ? 230.w: 150.w,
                alignment: Alignment.center,
                child: Text(
                  "GitHub",
                  style: TextStyle(fontSize: isMobile ? 40.sp :isTablet ? 30.sp: 18.sp),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 1.w),
                  borderRadius: BorderRadius.all(Radius.circular(40.r)),
                ),
                height: isMobile ? 30.h : isTablet ? 40.h:60.h,
                width: isMobile ? 250.w :isTablet ? 230.w: 150.w,
                alignment: Alignment.center,
                child: Text(
                  "Live Demo",
                  style: TextStyle(fontSize: isMobile ? 40.sp : isTablet ? 30.sp:18.sp),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
