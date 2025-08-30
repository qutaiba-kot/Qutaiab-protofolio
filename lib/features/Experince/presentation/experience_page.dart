import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/Core/Widgets/experince_conatiner_widget.dart';
import 'package:protofolio/Core/Widgets/next_page_button.dart';

class ExperiencePage extends StatelessWidget {
  ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20.h),
                Text(
                  "Explore my",
                  style: TextStyle(fontSize: 20.sp, color: Colors.grey),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Experience",
                  style: TextStyle(fontSize: 50.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ExperinceConatinerWidget(),
                    SizedBox(width: 20.w),
                    ExperinceConatinerWidget(),
                  ],
                ),
              ],
            ),
          ),
          Positioned(child: NextPageButton(), bottom: 145.h, right: 100.w),
        ],
      ),
    );
  }
}
