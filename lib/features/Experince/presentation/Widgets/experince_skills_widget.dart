import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';

class ExperinceSkillsWidget extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile;
  final bool isTablet;

  const ExperinceSkillsWidget({
    super.key,
    required this.height,
    required this.width,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    return HomeAnimation(
      beginOffset: const Offset(-1, 0),
      child: Column(
        children: [
          Text(
            "Skills",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: isMobile ? 20 : 30,
            ),
          ),
          SizedBox(height: isMobile || isTablet ? height * 0.02 : height * 0.02),
          Container(
            padding: EdgeInsets.all(10),
            height: height * 0.15,
            width: isMobile|| isTablet ? width*0.95 : width * 0.75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            color: AppColors.secondary
            ),
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: profile!.skills.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:  isMobile || isTablet ?  4 : 6,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: (width / 6) / (height * 0.15 / 3),
              ),
              itemBuilder: (context, index) {
                final skill = profile!.skills[index];
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: AppColors.secondary,
                        size: isMobile ? 6 : 12,
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          skill,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: isMobile ? 12 : 16,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
