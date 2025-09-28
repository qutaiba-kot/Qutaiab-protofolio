import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/home/Responsive%20Helper/home_responsive.dart';
import 'package:protofolio/features/home/presentation/Widgets/contact_me_button.dart';
import 'package:protofolio/features/home/presentation/Widgets/dowmload_cv_button.dart';

class IntroPersonaInfoWidget extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  final double height;
  final double width;
  const IntroPersonaInfoWidget({
    super.key,
    required this.isMobile,
    required this.isTablet,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    final sizes = HomeResponsive(
      isMobile: isMobile,
      isTablet: isTablet,
      height: height,
      width: width,
    );
    return HomeAnimation(
      beginOffset: Offset(-1, 0),
      child: SizedBox(
        width: sizes.containerWidth,
        height: sizes.containerHeight,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello, I'm",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Text(
                profile!.name,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                profile!.specialization,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              SizedBox(height: sizes.containerHeight * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DowmloadCvButton(
                    isMobile: isMobile,
                    isTablet: isTablet,
                    height: sizes.containerHeight,
                    width: sizes.containerHeight,
                  ),
                  SizedBox(width: sizes.containerHeight * 0.05),
                  ContactMeButton(
                    isMobile: isMobile,
                    isTablet: isTablet,
                    height: sizes.containerHeight,
                    width: sizes.containerHeight,
                  ),
                ],
              ),
              SizedBox(height: sizes.containerHeight * 0.1),
              Icon(
                FontAwesomeIcons.flutter,
                size: 50,
                color: AppColors.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
