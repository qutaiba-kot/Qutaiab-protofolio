import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40.h),
          Row(
            children: [
              SizedBox(width: 200.w),
              Text("Qutaiba Hassan", style: TextStyle(fontSize: 50.sp)),
              SizedBox(width: 500.w),
              Row(
                children: [
                  Text("About", style: TextStyle(fontSize: 30.sp)),
                  SizedBox(width: 40.w),
                  Text("Experince", style: TextStyle(fontSize: 30.sp)),
                  SizedBox(width: 40.w),
                  Text("Projects", style: TextStyle(fontSize: 30.sp)),
                  SizedBox(width: 40.w),
                  Text("Contacts", style: TextStyle(fontSize: 30.sp)),
                  SizedBox(width: 40.w),
                ],
              ),
            ],
          ),
          SizedBox(height: 209.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(radius: 250.r, backgroundColor: Colors.black),
              SizedBox(width: 100.w),
              Column(
                children: [
                  Text("Hello, I'm", style: TextStyle(fontSize: 30.sp)),
                  Text(
                    "Qutaiba Hassan",
                    style: TextStyle(fontSize: 44.sp, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Flutter Developer",
                    style: TextStyle(
                      fontSize: 50.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.black,
                          backgroundColor: const Color.fromARGB(
                            255,
                            255,
                            255,
                            255,
                          ),
                          minimumSize: Size(11.w, 11.h), 
                          fixedSize: Size(160.w, 40.h), 
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              20.r,
                            ), 
                            side: const BorderSide(
                              color: Color.fromARGB(255, 4, 4, 4),
                              width: 2,
                            ), 
                          ),
                        ),
                        child: Text(
                          "Download CV",
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: 20.w),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            95,
                            92,
                            81,
                          ),
                          minimumSize: Size(11.w, 11.h), 
                          fixedSize: Size(160.w, 40.h), 
                        ),
                        child: Text(
                          "Contact Info",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(FontAwesomeIcons.linkedin, size: 40.r, color: Colors.black),
                      SizedBox(width: 11.w),
                      Icon(FontAwesomeIcons.github, size: 40.r, color: Colors.black),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
