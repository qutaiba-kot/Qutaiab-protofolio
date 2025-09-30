import 'package:flutter/material.dart';
import 'package:protofolio/Core/Sizer/main_sizer.dart';
import 'package:protofolio/Core/Widgets/title_and_sub.dart';
import 'package:protofolio/features/Experince/presentation/Widgets/experince_work_widget.dart';
import 'package:protofolio/features/Experince/presentation/Widgets/experince_skills_widget.dart';

class ExperiencePage extends StatelessWidget {
  final MainSizer mainSizer;
  const ExperiencePage({super.key, required this.mainSizer});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mainSizer.height,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  TitleAndSub(
                    mainSizer: mainSizer,
                    title: "Explore My",
                    subTitle: "Experience",
                  ),
                  SizedBox(height: mainSizer.height * 0.08),
                  mainSizer.isMobile || mainSizer.isTablet
                      ? Column(
                          children: [
                            ExperinceWorkWidget(mainSizer: mainSizer),
                            SizedBox(height: mainSizer.height * 0.05),
                            ExperinceSkillsWidget(
                              mainSizer: mainSizer,
                            ),
                            SizedBox(height: mainSizer.height * 0.05),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ExperinceWorkWidget(
                              mainSizer: mainSizer,
                            ),
                            SizedBox(width: mainSizer.width * 0.05),
                            ExperinceSkillsWidget(
                              mainSizer: mainSizer,
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
