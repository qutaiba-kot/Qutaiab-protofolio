import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protofolio/Core/Widgets/experince_widget.dart';

class ExperinceConatinerWidget extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  const ExperinceConatinerWidget({
    super.key,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isMobile ? 300.h : isTablet? 300.h: 600.h,
      width: isMobile ? 1400.w : isTablet? 1400.w: 700.w,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1.w),
        borderRadius: BorderRadius.all(Radius.circular(isMobile ? 150.r :isTablet? 90.r:40.r)),
      ),
      child: Column(
        children: [
          SizedBox(height: 25.h),
          Text(
            "FrontEnd Development",
            style: TextStyle(fontSize: isMobile ? 90.sp  : isTablet? 50.sp:20.sp, color: Colors.grey),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: ExperinceWidget(
                      isMobile: isMobile,
                      isTablet: isTablet,
                      skill: "Flutter",
                      level: "Perfect",
                      icon: FontAwesomeIcons.flutter,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: ExperinceWidget(
                      isMobile: isMobile,
                      isTablet: isTablet,
                      skill: "Figma",
                      level: "Mid",
                      icon: FontAwesomeIcons.figma,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: ExperinceWidget(
                      isMobile: isMobile,
                      isTablet: isTablet,
                      skill: "Java",
                      level: "Perfect",
                      icon: FontAwesomeIcons.java,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: ExperinceWidget(
                      isMobile: isMobile,
                      isTablet: isTablet,
                      skill: "C++",
                      level: "Perfect",
                      icon: FontAwesomeIcons.c,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: ExperinceWidget(
                      isMobile: isMobile,
                      isTablet: isTablet,
                      skill: "VB",
                      level: "Perfect",
                      icon: FontAwesomeIcons.certificate,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: ExperinceWidget(
                      isMobile: isMobile,
                      isTablet: isTablet,
                      skill: "UI/UX",
                      level: "Perfect",
                      icon: FontAwesomeIcons.uikit,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
