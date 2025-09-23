import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
import 'package:protofolio/Core/Widgets/title_and_sub.dart';
import 'package:protofolio/features/Experince/presentation/Widgets/experince_conatiner_widget.dart';
import 'package:protofolio/features/Experince/presentation/Widgets/experince_skills_widget.dart';

class ExperiencePage extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile;
  final bool isTablet;
  ExperiencePage({
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
        child: Stack(
          children: [
            Column(
              children: [
                TitleAndSub(
                  isMobile: isMobile,
                  isTablet: isTablet,
                  height: height,
                  width: width,
                  title: "Explore My",
                  subTitle: "Experience",
                ),
                SizedBox(
                  height: isMobile || isTablet ? height * 0.04 : height * 0.12,
                ),
                isTablet || isMobile
                    ? Column(
                        children: [
                          SizedBox(height: height * 0.1),
                          HomeAnimation(
                            beginOffset: Offset(-1, 0),
                            child: ExperinceConatinerWidget(
                              isMobile: isMobile,
                              isTablet: isTablet,
                              height: height,
                              width: width,
                            ),
                          ),
                        ],
                      )
                    : HomeAnimation(
                        beginOffset: Offset(-1, 0),
                        child: ExperinceConatinerWidget(
                          isMobile: false,
                          isTablet: false,
                          height: height,
                          width: width,
                        ),
                      ),
              ],
            ),
            Positioned(
              bottom: isMobile || isTablet ? height * 0.2 : height * 0.05,
              left: isTablet|| isMobile
                  ? width * 0.05
                  : width * 0.1,
              child: ExperinceSkillsWidget(
                height: height,
                width: width,
                axisDirection: Axis.vertical,
                isMobile: isMobile,
                isTablet: isTablet,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
