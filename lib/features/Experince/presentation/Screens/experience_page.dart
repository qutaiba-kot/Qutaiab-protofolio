import 'package:flutter/material.dart';
import 'package:protofolio/features/Experince/presentation/Widgets/experince_column.dart';
import 'package:protofolio/Core/Widgets/title_and_sub.dart';
import 'package:protofolio/features/Experince/presentation/Widgets/experince_row.dart';

class ExperiencePage extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile;
  final bool isTablet;
  ExperiencePage({
    super.key,
    required this.height,
    required this.width,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: height,
        child: Column(
          children: [
            TitleAndSub(
              isMobile: isMobile,
              isTablet: isTablet,
              height: height,
              width: width,
              title: "Explore My",
              subTitle: "Experience",
            ),
            SizedBox(
              height: isMobile || isTablet ? height * 0.04 : height * 0.18,
            ),
            isTablet || isMobile
                ? ExperinceColumn(
                    isMobile: isMobile,
                    isTablet: isTablet,
                    height: height,
                    width: width,
                  )
                : ExperinceRow(height: height, width: width),
          ],
        ),
      ),
    );
  }
}
