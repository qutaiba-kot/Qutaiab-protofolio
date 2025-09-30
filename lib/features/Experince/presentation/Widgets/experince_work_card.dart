import 'package:flutter/material.dart';
import 'package:protofolio/Core/Sizer/main_sizer.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/Experince/Responsive%20Helper/experince_responsive.dart';

class ExperinceWorkCard extends StatelessWidget {
  final MainSizer mainSizer;
  final int index;
  const ExperinceWorkCard({
    super.key,
    required this.mainSizer,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final sizes = ExperinceResponsive(
      mainSizer: mainSizer
    );
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.5), // ظل خفيف
            spreadRadius: 1, // قليل جدًا
            blurRadius: 15, // يجعل الظل ناعم
            offset: Offset(0, 5), // يجعل العنصر يبدو مرتفعًا قليلًا
          ),
        ],
      ),
      height: sizes.containerHeight * 0.2,
      width: sizes.containerWidth * 0.95,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: sizes.containerWidth * 0.2,
            height: sizes.containerHeight * 0.15,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                profile!.profileImageUrl[index],
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: sizes.containerWidth * 0.03,
            width: sizes.containerWidth * 0.15,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                profile!.workDuration[index],
                style: TextStyle(color: AppColors.primary, fontSize: 10),
              ),
            ),
          ),
          SizedBox(
            height: sizes.containerWidth * 0.1,
            width: sizes.containerWidth * 0.3,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  Text(
                    profile!.company[index],
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    profile!.position[index],
                    style: TextStyle(color: AppColors.primary, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
