import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';

class ExperinceSkillsWidget extends StatelessWidget {
  final double height;
  final double width;
  final Axis axisDirection;
  final bool isMobile;
  final bool isTablet;

  const ExperinceSkillsWidget({
    super.key,
    required this.height,
    required this.width,
    required this.axisDirection,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    return HomeAnimation(
      beginOffset: const Offset(0, 1),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondary,
          border: Border.all(color: AppColors.secondary , width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(40)),
        ),
        height: isMobile || isTablet ? height * 0.1 : height * 0.22,
        width: isMobile || isTablet ? width * 0.9 : width * 0.8,
        padding: const EdgeInsets.all(18.0),
        child: GridView.builder(
          scrollDirection: axisDirection,
          padding:  EdgeInsets.all(isMobile || isTablet ? 0 : 15),
          itemCount: profile!.skills.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6,
            mainAxisSpacing: 18,
            crossAxisSpacing: 10,
            childAspectRatio: 3,
          ),
          itemBuilder: (context, index) {
            final skill = profile!.skills[index];
            return Text(
              skill,
              style:  TextStyle(color: Colors.white, fontSize: isMobile || isTablet ? 10 : 18),
            );
          },
        ),
      ),
    );
  }
}
