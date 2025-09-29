import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/main_animation.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/Experince/Responsive%20Helper/experince_responsive.dart';
import 'package:protofolio/features/Experince/presentation/Widgets/experince_skill_card.dart';

class ExperinceSkillsWidget extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  final double height;
  final double width;

  const ExperinceSkillsWidget({
    super.key,
    required this.isMobile,
    required this.isTablet,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    final sizes = ExperinceResponsive(
      isMobile: isMobile,
      isTablet: isTablet,
      height: height,
      width: width,
    );

    return MainAnimation(
      delay: const Duration(milliseconds: 1000),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.circular(15),
        ),
        height: sizes.containerHeight,
        width: sizes.containerWidth,
        child: Column(
          children: [
            SizedBox(height: sizes.containerHeight * 0.03),
            SizedBox(
              height: sizes.containerHeight * 0.07,
              width: sizes.containerWidth * 0.15,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: const Text(
                  "Skills",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: sizes.containerHeight * 0.1),
            SizedBox(
              height: sizes.containerHeight * 0.7,
              width: sizes.containerWidth * 0.9,
              child: SingleChildScrollView(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 100,
                  runSpacing: 100,
                  children: profile!.skills.map((skill) {
                    return ExperinceSkillCard(
                      text: skill,
                      height: sizes.containerHeight,
                      width: sizes.containerWidth,
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
