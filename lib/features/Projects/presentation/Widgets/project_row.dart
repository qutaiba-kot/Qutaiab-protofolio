import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/main_animation.dart';
import 'package:protofolio/Core/Sizer/main_sizer.dart';
import 'package:protofolio/features/Projects/presentation/Widgets/project_conatiner_widjets.dart';

class ProjectRow extends StatelessWidget {
  final MainSizer mainSizer;
  const ProjectRow({super.key, required this.mainSizer});

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
            mainSizer: mainSizer,
          ),
        ),
        MainAnimation(
          
          delay: const Duration(milliseconds: 800),
          child: ProjectConatinerWidjets(
            projectNumber: 1,
            mainSizer: mainSizer,
          ),
        ),
        MainAnimation(
          
          delay: const Duration(milliseconds: 1000),
          child: ProjectConatinerWidjets(
            projectNumber: 2,
            mainSizer: mainSizer,
          ),
        ),
      ],
    );
  }
}
