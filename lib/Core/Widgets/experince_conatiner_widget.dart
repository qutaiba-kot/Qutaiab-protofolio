import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protofolio/Core/Widgets/experince_widget.dart';

class ExperinceConatinerWidget extends StatelessWidget {
  const ExperinceConatinerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      width: 700.w,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1.w),
        borderRadius: BorderRadius.all(Radius.circular(40.r)),
      ),
      child: Column(
        children: [
          SizedBox(height: 25.h),
          Text(
            "FrontEnd Development",
            style: TextStyle(fontSize: 20.sp, color: Colors.grey),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: ExperinceWidget(
                      skill: "Flutter",
                      level: "Perfect",
                      icon: FontAwesomeIcons.flutter,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: ExperinceWidget(
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
                      skill: "Java",
                      level: "Perfect",
                      icon: FontAwesomeIcons.java,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: ExperinceWidget(
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
                      skill: "Visual Basic",
                      level: "Perfect",
                      icon: FontAwesomeIcons.certificate,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: ExperinceWidget(
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
