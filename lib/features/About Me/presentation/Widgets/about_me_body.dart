import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protofolio/Core/Animations/main_animation.dart';
import 'package:protofolio/Core/Sizer/main_sizer.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/features/About%20Me/presentation/Widgets/about_me_container_widget.dart';
import 'package:protofolio/features/About%20Me/presentation/Widgets/about_me_paragraph_container_widget.dart';

class AboutMeBody extends StatelessWidget {
  final MainSizer mainSizer;
  const AboutMeBody({super.key, required this.mainSizer});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainAnimation(
              delay: const Duration(milliseconds: 800),
              child: AboutMeContainerWidget(
                icon: FontAwesomeIcons.award,
                title: "Experince",
                subTitle: profile!.duration,
                body: profile!.specialization,
                mainSizer: mainSizer,
              ),
            ),
            SizedBox(width: mainSizer.width * 0.009),
            MainAnimation(
              delay: const Duration(milliseconds: 1000),
              child: AboutMeContainerWidget(
                icon: FontAwesomeIcons.buildingColumns,
                title: "Education",
                subTitle: profile!.university,
                body: profile!.major,
                mainSizer: mainSizer,
              ),
            ),
          ],
        ),
        SizedBox(height: mainSizer.height * 0.01),
        MainAnimation(
          delay: const Duration(milliseconds: 1200),
          child: AboutMeParagraphContainerWidget(mainSizer: mainSizer),
        ),
      ],
    );
  }
}
