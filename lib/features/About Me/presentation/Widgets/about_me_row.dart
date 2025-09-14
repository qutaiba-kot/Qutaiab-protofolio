import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protofolio/features/About%20Me/presentation/Widgets/about_me_container_widget.dart';
import 'package:protofolio/features/About%20Me/presentation/Widgets/about_me_paragraph_container_widget.dart';
import 'package:protofolio/features/About%20Me/presentation/Widgets/about_me_pic_conatiner_widget.dart';

class AboutMeRow extends StatelessWidget {
  final double height;
  final double width;
  const AboutMeRow({super.key, required this.height, required this.width});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AboutMePicConatinerWidget(height: height, width: width , isMobile: false,
              isTablet: false,),
        SizedBox(width: width * 0.030),
        Column(
          children: [
            Row(
              children: [
                AboutMeContainerWidget(
                  icon: FontAwesomeIcons.award,
                  title: "Experince",
                  subTitle: "1+ Year",
                  body: "Flutter Developer",
                  height: height,
                  width: width,
                  isMobile: false,
                  isTablet: false,
                ),
                SizedBox(width: width * 0.009),
                AboutMeContainerWidget(
                  icon: FontAwesomeIcons.university,
                  title: "Education",
                  subTitle: "The Hashemite University",
                  body: "Copmuter Science",
                  height: height,
                  width: width,
                  isMobile: false,
                  isTablet: false,
                ),
              ],
            ),
            AboutMeParagraphContainerWidget(
              height: height,
              width: width,
              isMobile: false,
              isTablet: false,
            ),
          ],
        ),
      ],
    );
  }
}
