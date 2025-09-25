import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/Experince/Logic/Cubit/experince_cubit.dart';
import 'package:protofolio/features/Experince/Logic/Cubit/experince_state.dart';
import 'package:protofolio/features/Experince/Responsive%20Helper/experince_responsive.dart';

class ExperinceConatinerWidget extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  final double height;
  final double width;

  const ExperinceConatinerWidget({
    super.key,
    required this.isMobile,
    required this.isTablet,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    final sizes = ExperinceResponsive(
      isMobile: isMobile,
      isTablet: isTablet,
      height: height,
      width: width,
    );
    final projects = List.generate(
      profile!.company.length,
      (index) => Container(
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
              alignment: isMobile || isTablet ? Alignment.center : null,
              height: sizes.textContainerHeight,
              width: sizes.textContainerWidth,
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Company  :  ",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: sizes.textSizes * 1.2,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                      ),
                      Flexible(
                        child: Text(
                          "${profile!.company[index]}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: sizes.textSizes,
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
                      Text(
                        "Position  :  ",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: sizes.textSizes * 1.2,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                      ),
                      Flexible(
                        child: Text(
                          "${profile!.position[index]}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: sizes.textSizes,
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
                      Text(
                        "Duration  :  ",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: sizes.textSizes * 1.2,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                      ),
                      Flexible(
                        child: Text(
                          "${profile!.workDuration[index]}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: sizes.textSizes,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                        ),
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
    return BlocProvider(
      create: (_) => ExperienceCubit(),
      child: BlocBuilder<ExperienceCubit, ExperienceState>(
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: sizes.cursolheight,
                width: sizes.cursolWidth,
                child: CarouselSlider(
                  items: projects,
                  options: CarouselOptions(
                    //height: height*0.2,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(
                      milliseconds: 1800,
                    ),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 1,
                    scrollDirection: Axis.horizontal,
                    disableCenter: true,
                    onPageChanged: (index, reason) {
                      context.read<ExperienceCubit>().changeIndex(index);
                    },
                  ),
                ),
              ),
              SizedBox(height: height * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: projects.asMap().entries.map((entry) {
                  return Container(
                    width: sizes.indectorWidth,
                    height: sizes.indectorHeight,
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: state.currentIndex == entry.key
                          ? AppColors.primary
                          : Colors.grey,
                    ),
                  );
                }).toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}
