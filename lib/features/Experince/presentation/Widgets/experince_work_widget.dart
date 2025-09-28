import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/Experince/Responsive%20Helper/experince_responsive.dart';
import 'package:protofolio/features/Experince/presentation/Widgets/experince_work_card.dart';

class ExperinceConatinerWidget extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  final double height;
  final double width;

  const ExperinceConatinerWidget({
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
    final projects = List.generate(
      profile!.company.length,
      (index) => ExperinceWorkCard(
        isMobile: isMobile,
        isTablet: isTablet,
        height: height,
        width: width,
        index: index,
      ),
    );
    return HomeAnimation(
      beginOffset: Offset(-1, 0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.circular(15),
        ),
        height: sizes.containerHeight,
        width: sizes.containerWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: sizes.containerHeight*0.07,
              width: sizes.containerWidth*0.15,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: const Text(
                  "Work",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
           ...projects 
          ],
        ),
      ),
    );
  }
}
