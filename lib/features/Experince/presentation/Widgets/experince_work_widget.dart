import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/main_animation.dart';
import 'package:protofolio/Core/Sizer/main_sizer.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/Experince/Responsive%20Helper/experince_responsive.dart';
import 'package:protofolio/features/Experince/presentation/Widgets/experince_work_card.dart';

class ExperinceWorkWidget extends StatelessWidget {
  final MainSizer mainSizer;

  const ExperinceWorkWidget({
    super.key,
    required this.mainSizer
  });

  @override
  Widget build(BuildContext context) {
    final sizes = ExperinceResponsive(
      mainSizer: mainSizer
    );
    final projects = List.generate(
      profile!.company.length,
      (index) => ExperinceWorkCard(
        mainSizer: mainSizer,
        index: index,
      ),
    );
    return MainAnimation(
      delay: const Duration(milliseconds: 600),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.circular(15),
        ),
        height: sizes.containerHeight,
        width: sizes.containerWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: sizes.containerHeight * 0.07,
              width: sizes.containerWidth * 0.15,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: const Text(
                  "Work",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ...projects,
          ],
        ),
      ),
    );
  }
}
