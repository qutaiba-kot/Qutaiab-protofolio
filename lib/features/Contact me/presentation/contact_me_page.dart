import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protofolio/Core/Widgets/row_selection_page.dart';

class ContactMePage extends StatelessWidget {
  const ContactMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Get In Touch",
              style: TextStyle(color: Colors.grey, fontSize: 20.sp),
            ),
            Text(
              "Contact Me",
              style: TextStyle(fontSize: 66.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50.h),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              height: 80,
              width: 490,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(width: 10.w),
                      Text("qutibaone@gmail.com"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.linkedin),
                      SizedBox(width: 10.w),
                      Text("LinkedIn"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 300.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RowSelectionPage()
              ],
            ),
            SizedBox(height: 50.h),
            Text(
              "Copyright 2025 Qutaiba Hassan. All Rights Reserved",
              style: TextStyle(color: Colors.grey, fontSize: 20.sp),
            ),
            SizedBox(height: 50.h),
          ],
        ),
      ),
    );
  }
}
