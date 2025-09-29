import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/main_animation.dart';
import 'package:protofolio/features/Projects/presentation/Widgets/project_conatiner_widjets.dart';

class ProjectRow extends StatelessWidget {
  final double height;
  final double width;
  const ProjectRow({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 80,
      children: [
        MainAnimation(
          
          delay: const Duration(milliseconds: 600),
          child: ProjectConatinerWidjets(
            projectNumber: 0,
            isMobile: false,
            isTablet: false,
            height: height,
            width: width,
          ),
        ),
        MainAnimation(
          
          delay: const Duration(milliseconds: 800),
          child: ProjectConatinerWidjets(
            projectNumber: 1,
            isMobile: false,
            isTablet: false,
            height: height,
            width: width,
          ),
        ),
        MainAnimation(
          
          delay: const Duration(milliseconds: 1000),
          child: ProjectConatinerWidjets(
            projectNumber: 2,
            isMobile: false,
            isTablet: false,
            height: height,
            width: width,
          ),
        ),
      ],
    );
  }
}
