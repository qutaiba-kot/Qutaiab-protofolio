import 'package:flutter/material.dart';
import 'package:protofolio/Core/Widgets/title_and_sub.dart';
import 'package:protofolio/features/Experince/presentation/Widgets/experince_work_widget.dart';
import 'package:protofolio/features/Experince/presentation/Widgets/experince_skills_widget.dart';

class ExperiencePage extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile;
  final bool isTablet;
  const ExperiencePage({
    super.key,
    required this.height,
    required this.width,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  TitleAndSub(
                    isMobile: isMobile,
                    isTablet: isTablet,
                    height: height,
                    width: width,
                    title: "Explore My",
                    subTitle: "Experience",
                  ),
                  SizedBox(height: height*0.08,),
                  isMobile || isTablet
                      ? Column(
                          children: [
                            ExperinceConatinerWidget(
                              isMobile: isMobile,
                              isTablet: isTablet,
                              height: height,
                              width: width,
                            ),
                            SizedBox(height: height * 0.05),
                            ExperinceSkillsWidget(
                              isMobile: isMobile,
                              isTablet: isTablet,
                              height: height,
                              width: width,
                            ),
                            SizedBox(height: height * 0.05),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ExperinceConatinerWidget(
                              isMobile: isMobile,
                              isTablet: isTablet,
                              height: height,
                              width: width,
                            ),
                            SizedBox(width: width * 0.05),
                            ExperinceSkillsWidget(
                              isMobile: isMobile,
                              isTablet: isTablet,
                              height: height,
                              width: width,
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
