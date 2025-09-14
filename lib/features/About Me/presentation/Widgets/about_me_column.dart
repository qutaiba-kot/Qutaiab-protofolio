import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protofolio/features/About%20Me/presentation/Widgets/about_me_container_widget.dart';
import 'package:protofolio/features/About%20Me/presentation/Widgets/about_me_paragraph_container_widget.dart';
import 'package:protofolio/features/About%20Me/presentation/Widgets/about_me_pic_conatiner_widget.dart';

class AboutMeColumn extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile;
  final bool isTablet;
  const AboutMeColumn({
    super.key,
    required this.height,
    required this.width,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AboutMePicConatinerWidget(
          height: height,
          width: width,
          isMobile: isMobile,
          isTablet: isTablet,
        ),
        SizedBox(height: height * 0.030),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AboutMeContainerWidget(
              icon: FontAwesomeIcons.award,
              title: "Experince",
              subTitle: "1+ Year",
              body: "Flutter Developer",
              height: height,
              width: width,
              isMobile: isMobile,
              isTablet: isTablet,
            ),
            SizedBox(width: width * 0.01),
            AboutMeContainerWidget(
              icon: FontAwesomeIcons.university,
              title: "Education",
              subTitle: "The Hashemite University",
              body: "Copmuter Science",
              height: height,
              width: width,
              isMobile: isMobile,
              isTablet: isTablet,
            ),
          ],
        ),
        SizedBox(height: height * 0.001),
        AboutMeParagraphContainerWidget(
          height: height,
          width: width,
          isMobile: isMobile,
          isTablet: isTablet,
        ),
      ],
    );
  }
}
