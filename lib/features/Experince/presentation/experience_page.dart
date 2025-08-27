import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/Core/Widgets/experince_conatiner_widget.dart';

class ExperiencePage extends StatelessWidget {
  ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Explore my",
              style: TextStyle(fontSize: 18.sp, color: Colors.grey),
            ),
            SizedBox(height: 10),
            Text(
              "Experience",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50,),
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
    );
  }
}
