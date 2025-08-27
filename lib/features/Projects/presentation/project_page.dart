import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/Core/Widgets/project_conatiner_widjets.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Brows My recent",
              style: TextStyle(color: Colors.grey, fontSize: 20.sp),
            ),
            Text(
              "Projects",
              style: TextStyle(fontSize: 66.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 33.h),
            SizedBox(
              width: 1300.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProjectConatinerWidjets(),
                  ProjectConatinerWidjets(),
                  ProjectConatinerWidjets(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
