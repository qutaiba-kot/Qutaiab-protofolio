import 'package:flutter/material.dart';
import 'package:protofolio/Core/Sizer/main_sizer.dart';
import 'package:protofolio/Core/Widgets/title_and_sub.dart';
import 'package:protofolio/features/About%20Me/presentation/Widgets/about_me_pic_conatiner_widget.dart';
import 'package:protofolio/features/About%20Me/presentation/Widgets/about_me_body.dart';

class AboutMePage extends StatelessWidget {
  final MainSizer mainSizer;
  const AboutMePage({
    super.key,required this.mainSizer
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: mainSizer.height,
        child: Column(
          children: [
            TitleAndSub(
              mainSizer: mainSizer,
              title: "Get To Know More",
              subTitle: "About Me",
            ),
            SizedBox(
              height: mainSizer.isMobile || mainSizer.isTablet ? mainSizer.height * 0.05 : mainSizer.height * 0.1,
            ),
           mainSizer. isMobile || mainSizer.isTablet
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AboutMePicConatinerWidget(
                        mainSizer: mainSizer,
                      ),
                      SizedBox(height: mainSizer.height * 0.02),
                      AboutMeBody(
                        mainSizer: mainSizer,
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AboutMePicConatinerWidget(
                        mainSizer: mainSizer,
                      ),
                      SizedBox(width: mainSizer.width * 0.030),
                      AboutMeBody(
                        mainSizer: mainSizer,
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
