import 'package:flutter/material.dart';
import 'package:protofolio/Core/Widgets/title_and_sub.dart';
import 'package:protofolio/features/Projects/presentation/Widgets/project_conatiner_widjets.dart';

class ProjectColumn extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  final double height;
  final double width;
  const ProjectColumn({
    super.key,
    required this.isMobile,
    required this.isTablet,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: SizedBox(
          child: Column(
            children: [
              TitleAndSub(
                isMobile: isMobile,
                isTablet: isTablet,
                height: height,
                width: width,
                title: "Brows My recent",
                subTitle: "Projects",
              ),
              SizedBox(height: height * 0.07),
              ProjectConatinerWidjets(
                isMobile: isMobile,
                isTablet: isTablet,
                height: height,
                width: width,
              ),
              SizedBox(height: height * 0.04),
              ProjectConatinerWidjets(
                isMobile: isMobile,
                isTablet: isTablet,
                height: height,
                width: width,
              ),
              SizedBox(height: height * 0.04),
              ProjectConatinerWidjets(
                isMobile: isMobile,
                isTablet: isTablet,
                height: height,
                width: width,
              ),
              SizedBox(height: height*0.1,)
            ],
          ),
        ),
      ),
    );
  }
}
