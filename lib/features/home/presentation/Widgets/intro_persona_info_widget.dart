import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protofolio/Core/Animations/main_animation.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/home/Responsive%20Helper/home_responsive.dart';
import 'package:protofolio/features/home/presentation/Widgets/contact_me_button.dart';
import 'package:protofolio/features/home/presentation/Widgets/dowmload_cv_button.dart';

class IntroPersonaInfoWidget extends StatelessWidget {
  final HomeResponsive sizes;
  const IntroPersonaInfoWidget({
    super.key, required this.sizes,
  });

  @override
  Widget build(BuildContext context) {
    return MainAnimation(
      delay: Duration(milliseconds: 500),
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
                    sizes: sizes,
                  ),
                  SizedBox(width: sizes.containerHeight * 0.05),
                  ContactMeButton(
                    sizes: sizes,
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
