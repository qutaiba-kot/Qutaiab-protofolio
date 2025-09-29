import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/About%20Me/Responsive%20Helper/about_me_responsive.dart';

class AboutMeParagraphContainerWidget extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile;
  final bool isTablet;
  const AboutMeParagraphContainerWidget({
    super.key,
    required this.height,
    required this.width,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    final sizes = AboutMeResponsive(
      isMobile: isMobile,
      isTablet: isTablet,
      height: height,
      width: width,
    );
    return Container(
      height: sizes.parahraphHeight,
      width: sizes.parahraphWidth,
      decoration: BoxDecoration(
      color:  AppColors.secondary,
      border: Border.all(color: Colors.transparent, width: 1),
      borderRadius: BorderRadius.all(Radius.circular(40)),
    ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: AutoSizeText(
           profile!.aboutMeParagraph,
          style: const TextStyle(fontSize: 90 , color: Colors.white),
          maxLines: 10,
          minFontSize: 0,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
