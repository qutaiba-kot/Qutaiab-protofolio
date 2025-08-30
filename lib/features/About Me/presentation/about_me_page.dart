import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protofolio/Core/Widgets/next_page_button.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 70.h),
                      Text(
                        "Get To Know More",
                        style: TextStyle(color: Colors.grey, fontSize: 20.sp),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "About Me",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 120.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 500.h,
                    width: 400.w,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(30.r)),
                    ),
                    child: const Text(
                      "data",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 60.w),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 200.h,
                            width: 400.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 3),
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  FontAwesomeIcons.award,
                                  size: 30.r,
                                  color: Colors.black,
                                ),
                                Text(
                                  "Experience",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "1+ years",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "Flutter Development",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20.w),
                          Container(
                            height: 200.h,
                            width: 400.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 3),
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  FontAwesomeIcons.university,
                                  size: 30.r,
                                  color: Colors.black,
                                ),
                                Text(
                                  "Education",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "The Hashemite University",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "Copmuter Science",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30.h),
                      Text(
                        style: TextStyle(fontSize: 19.sp),
                        """Motivated and detail-oriented Accounting and Commercial Law graduate with a strong 
        foundation in financial reporting, auditing, and legal compliance. Passionate about applying 
        theoretical knowledge in real world financial environments while ensuring accuracy and 
        ethical financial practices. Adept at problem-solving, budgeting, and tax computation, with 
        excellent communication and teamwork skills. Seeking an opportunity to contribute to a 
        dynamic accounting or finance team. """,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Positioned(child: NextPageButton() , bottom: 145.h, right: 100.w,),
        ],
      ),
    );
  }
}
