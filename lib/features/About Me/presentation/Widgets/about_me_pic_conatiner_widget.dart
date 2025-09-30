import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/main_animation.dart';
import 'package:protofolio/Core/Sizer/main_sizer.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/features/About%20Me/Responsive%20Helper/about_me_responsive.dart';

class AboutMePicConatinerWidget extends StatelessWidget {
  final MainSizer mainSizer;
  const AboutMePicConatinerWidget({
    super.key,required this.mainSizer
  });
  @override
  Widget build(BuildContext context) {
    final sizes = AboutMeResponsive(
     mainSizer: mainSizer
    );
    return MainAnimation(
      
      delay: const Duration(milliseconds: 600),
      child: SizedBox(
        height: sizes.picHeight,
        width: sizes.picWidth,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(60)),
          child: Image.network(profile!.secondPic, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
