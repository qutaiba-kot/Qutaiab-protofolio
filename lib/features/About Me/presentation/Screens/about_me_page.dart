import 'package:flutter/material.dart';
import 'package:protofolio/Core/Widgets/title_and_sub.dart';
import 'package:protofolio/features/About%20Me/presentation/Widgets/about_me_column.dart';
import 'package:protofolio/features/About%20Me/presentation/Widgets/about_me_row.dart';
class AboutMePage extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile;
  final bool isTablet;
  const AboutMePage({super.key, required this.height, required this.width, required this.isMobile, required this.isTablet});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: SizedBox(
            height: height,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TitleAndSub(
                      isMobile: isMobile,
                      isTablet: isTablet,
                      height: height,
                      width: width,
                      title: "Get To Know More",
                      subTitle: "About Me",
                    ),
                  ],
                ),
                SizedBox(
                  height: isMobile || isTablet
                      ? height * 0.04
                      : height * 0.15,
                ),
                isMobile || isTablet
                    ? AboutMeColumn(
                        height: height,
                        width: width,
                        isMobile: isMobile,
                        isTablet: isTablet,
                      )
                    : AboutMeRow(
                        height: height,
                        width: width,
                      ),
              ],
            ),
          ),
        );
  }
}
