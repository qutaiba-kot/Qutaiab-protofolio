import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
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
    final sizes = ParagraphSizes(
      isMobile: isMobile,
      isTablet: isTablet,
      height: height,
      width: width,
    );
    return HomeAnimation(
      beginOffset: Offset(0, 1),
      child: Container(
        height: sizes.containerHeight,
        width: sizes.containerWidth,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: AutoSizeText(
            "Motivated and detail-oriented Accounting and Commercial Law graduate with a strong foundation in financial reporting, auditing, and legal compliance. Passionate about applying theoretical knowledge in real world financial environments while ensuring accuracy and ethical financial practices. Adept at problem-solving, budgeting, and tax computation, with excellent communication and teamwork skills. Seeking an opportunity to contribute to a dynamic accounting or finance team.",
            style: const TextStyle(fontSize: 90 , color: Colors.white),
            maxLines: 10,
            minFontSize: 0,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
