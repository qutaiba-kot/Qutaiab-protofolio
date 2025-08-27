import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectConatinerWidjets extends StatelessWidget {
  const ProjectConatinerWidjets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1.w),
        borderRadius: BorderRadius.all(Radius.circular(40.r)),
      ),
      height: 500.h,
      width: 400.w,
      child: Column(
        children: [
          SizedBox(height: 20.h),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 3.w),
              borderRadius: BorderRadius.all(Radius.circular(40.r)),
            ),
            height: 300.h,
            width: 250.w,
          ),
          SizedBox(height: 20.h),
          Text("Project Name", style: TextStyle(fontSize: 23.sp)),
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
                height: 60.h,
                width: 150.w,
                alignment: Alignment.center,
                child: Text("GitHub", style: TextStyle(fontSize: 18.sp)),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 1.w),
                  borderRadius: BorderRadius.all(Radius.circular(40.r)),
                ),
                height: 60.h,
                width: 150.w,
                alignment: Alignment.center,
                child: Text("Live Demo", style: TextStyle(fontSize: 18.sp)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
