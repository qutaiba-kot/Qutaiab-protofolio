import 'package:flutter/material.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/Experince/Responsive%20Helper/experince_responsive.dart';

class ExperinceCard extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  final double height;
  final double width;
  final int index;
  const ExperinceCard({
    super.key,
    required this.isMobile,
    required this.isTablet,
    required this.height,
    required this.width,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final sizes = ExperinceResponsive(
      isMobile: isMobile,
      isTablet: isTablet,
      height: height,
      width: width,
    );
    return Container(
      height: sizes.cursolheight,
      width: sizes.cursolWidth,
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: sizes.picContainerWidth,
            height: sizes.picContainerHeight,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 3),
              borderRadius: BorderRadius.circular(40),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(60)),
              child: Image.network(profile!.profileImageUrl[index]),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: sizes.textContainerHeight,
            width: sizes.textContainerWidth,
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Text(
                            "Company  :  ",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: sizes.cardTextSizes * 1.2,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                          ),
                        ),
                        Flexible(
                          child: Text(
                            profile!.company[index],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: sizes.cardTextSizes,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Text(
                            "Position  :  ",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: sizes.cardTextSizes * 1.2,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                          ),
                        ),
                        Flexible(
                          child: Text(
                            profile!.position[index],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: sizes.cardTextSizes,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Text(
                            "Duration  :  ",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: sizes.cardTextSizes * 1.2,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                          ),
                        ),
                        Flexible(
                          child: Text(
                            profile!.workDuration[index],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: sizes.cardTextSizes,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                          ),
                        ),
                      ],
                    )
                  ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}