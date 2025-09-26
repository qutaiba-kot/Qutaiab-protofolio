import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/Experince/Logic/Cubit/experince_cubit.dart';
import 'package:protofolio/features/Experince/Logic/Cubit/experince_state.dart';
import 'package:protofolio/features/Experince/Responsive%20Helper/experince_responsive.dart';
import 'package:protofolio/features/Experince/presentation/Widgets/experince_card.dart';

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
      (index) => ExperinceCard(
        isMobile: isMobile,
        isTablet: isTablet,
        height: height,
        width: width,
        index: index,
      ),
    );
    return BlocProvider(
      create: (_) => ExperienceCubit(),
      child: BlocBuilder<ExperienceCubit, ExperienceState>(
        builder: (context, state) {
          return Column(
            children: [
              SizedBox(
                height: sizes.cursolheight,
                width: sizes.cursolWidth,
                child: CarouselSlider(
                  items: projects,
                  options: CarouselOptions(
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
              SizedBox(height: height*0.01,),
              SizedBox(
                height: sizes.indectorContainerHeight,
                width: sizes.indectorContainerWidth,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
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
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
