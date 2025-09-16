import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
import 'package:protofolio/Core/Widgets/title_and_sub.dart';
import 'package:protofolio/features/Projects/presentation/Widgets/project_conatiner_widjets.dart';

class ProjectRow extends StatelessWidget {
  final double height;
  final double width;
  const ProjectRow({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: height,
        child: Column(
          children: [
            TitleAndSub(
              isMobile: false,
              isTablet: false,
              height: height,
              width: width,
              title: "Brows My recent",
              subTitle: "Projects",
            ),
            SizedBox(height: height * 0.1),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 80,
                children: [
                  HomeAnimation(
                    beginOffset: Offset(-1, 0),
                    child: ProjectConatinerWidjets(
                      isMobile: false,
                      isTablet: false,
                      height: height,
                      width: width,
                    ),
                  ),
                  HomeAnimation(
                    beginOffset: Offset(0, 1),
                    child: ProjectConatinerWidjets(
                      isMobile: false,
                      isTablet: false,
                      height: height,
                      width: width,
                    ),
                  ),
                  HomeAnimation(
                    beginOffset: Offset(1, 0),
                    child: ProjectConatinerWidjets(
                      isMobile: false,
                      isTablet: false,
                      height: height,
                      width: width,
                    ),
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
