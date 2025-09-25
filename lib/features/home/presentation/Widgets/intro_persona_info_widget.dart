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
    Key? key,
    required this.isMobile,
    required this.isTablet,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizes = HomeResponsive(isMobile: isMobile, isTablet: isTablet, height: height, width: width);
    return HomeAnimation(
      beginOffset: Offset(-1, 0),
      child: SizedBox(
        width: sizes.containerWidth,
        height: sizes.containerHeight,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    "Hello, I'm",
                    style: TextStyle(fontSize: sizes.helloFontsize, color: Colors.white),
                  ),
                ),
                Flexible(
                  child: Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    profile!.name,
                    style: TextStyle(
                      fontSize: sizes.nameFontsize,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Flexible(
                  child: Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    profile!.specialization,
                    style: TextStyle(
                      fontSize: sizes.specializationFontsize,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                ),
                SizedBox(height: constraints.maxHeight * 0.055),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DowmloadCvButton(
                      isMobile: isMobile,
                      isTablet: isTablet,
                      height: constraints.maxHeight,
                      width: constraints.maxWidth,
                    ),
                    SizedBox(width: constraints.maxWidth * 0.02),
                    ContactMeButton(
                      isMobile: isMobile,
                      isTablet: isTablet,
                      height: constraints.maxHeight,
                      width: constraints.maxWidth,
                    ),
                  ],
                ),
                SizedBox(height: constraints.maxHeight * 0.07),
                Flexible(
                  child: Icon(
                    FontAwesomeIcons.flutter,
                    size: 50,
                    color: AppColors.primary,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
