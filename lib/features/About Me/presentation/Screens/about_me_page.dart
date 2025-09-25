import 'package:flutter/material.dart';
import 'package:protofolio/Core/Widgets/title_and_sub.dart';
import 'package:protofolio/features/About%20Me/presentation/Widgets/about_me_pic_conatiner_widget.dart';
import 'package:protofolio/features/About%20Me/presentation/Widgets/about_me_body.dart';

class AboutMePage extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile;
  final bool isTablet;
  const AboutMePage({
    super.key,
    required this.height,
    required this.width,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: height,
        child: Column(
          children: [
            TitleAndSub(
              isMobile: isMobile,
              isTablet: isTablet,
              height: height,
              width: width,
              title: "Get To Know More",
              subTitle: "About Me",
            ),
            SizedBox(
              height: isMobile || isTablet ? height * 0.1 : height * 0.15,
            ),
            isMobile || isTablet
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AboutMePicConatinerWidget(
                        height: height,
                        width: width,
                        isMobile: isMobile,
                        isTablet: isTablet,
                      ),
                      SizedBox(height: height * 0.02),
                      AboutMeBody(
                        height: height,
                        width: width,
                        isMobile: isMobile,
                        isTablet: isTablet,
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AboutMePicConatinerWidget(
                        height: height,
                        width: width,
                        isMobile: isMobile,
                        isTablet: isTablet,
                      ),
                      SizedBox(width: width * 0.030),
                      AboutMeBody(
                        height: height,
                        width: width,
                        isMobile: isMobile,
                        isTablet: isTablet,
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
