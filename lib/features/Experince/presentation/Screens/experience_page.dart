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
                  height: isMobile || isTablet ? height * 0.1 : height * 0.1,
                ),
                isTablet || isMobile
                    ? Column(
                        children: [
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
                    : Column(
                        children: [
                          HomeAnimation(
                            beginOffset: Offset(0, 1),
                            child: ExperinceConatinerWidget(
                              isMobile: false,
                              isTablet: false,
                              height: height,
                              width: width,
                            ),
                          ),
                        ],
                      ),
                       SizedBox(
                  height: height * 0.05,
                ),
                ExperinceSkillsWidget(
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
