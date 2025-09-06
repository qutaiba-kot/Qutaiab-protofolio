import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutMeParagraphContainerWidget extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  const AboutMeParagraphContainerWidget({
    super.key,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isTablet ? 300 :isMobile ? 220 : 200,
      width: isTablet ? 640 :isMobile ? 300 : 820,
      padding: EdgeInsets.all(
        isMobile
            ? 20.h
            : isTablet
            ? 20.h
            : 30.h,
      ),
      child: AnimatedDefaultTextStyle(
        style: TextStyle(fontSize: isTablet ? 45.sp : isMobile ? 13 : 19.sp,),
        duration: Duration(seconds: 0),
        child: Text(
          "Motivated and detail-oriented Accounting and Commercial Law graduate with a strongfoundation in financial reporting, auditing, and legal compliance. Passionate about applyingtheoretical knowledge in real world financial environments    while ensuring accuracy andethical financial practices. Adept at problem-solving,budgeting, and tax computation, withexcellent communication and teamwork skills. Seeking an opportunity to contribute to adynamic accounting or finance team.",
        ),
      ),
    );
  }
}
