import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/features/About%20Me/presentation/Widgets/about_me_container_widget.dart';
import 'package:protofolio/features/About%20Me/presentation/Widgets/about_me_paragraph_container_widget.dart';

class AboutMeBody extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile;
  final bool isTablet;
  const AboutMeBody({
    super.key,
    required this.height,
    required this.width,
    required this.isMobile,
    required this.isTablet,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HomeAnimation(
          beginOffset: Offset(1, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AboutMeContainerWidget(
                icon: FontAwesomeIcons.award,
                title: "Experince",
                subTitle: profile!.duration,
                body: profile!.specialization,
                height: height,
                width: width,
                isMobile: isMobile,
                isTablet: isTablet,
              ),
              SizedBox(width: width * 0.009),
              AboutMeContainerWidget(
                icon: FontAwesomeIcons.buildingColumns,
                title: "Education",
                subTitle: profile!.university,
                body: profile!.major,
                height: height,
                width: width,
                isMobile: isMobile,
                isTablet: isTablet,
              ),
            ],
          ),
        ),
        SizedBox(height: height*0.01,),
        AboutMeParagraphContainerWidget(
          height: height,
          width: width,
          isMobile: isMobile,
          isTablet: isTablet,
        ),
      ],
    );
  }
}
