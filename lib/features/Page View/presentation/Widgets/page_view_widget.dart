import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/features/About%20Me/presentation/Screens/about_me_page.dart';
import 'package:protofolio/features/Contact%20me/presentation/Screens/contact_me_page.dart';
import 'package:protofolio/features/Experince/presentation/Screens/experience_page.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_cubit.dart';
import 'package:protofolio/features/Projects/presentation/Screens/project_page.dart';
import 'package:protofolio/features/home/presentation/Screens/home_page.dart';

class PageViewWidget extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile;
  final bool isTablet;
  const PageViewWidget({
    super.key,
    required this.height,
    required this.width,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    final pageCubit = context.read<PageViewNavigationCubit>();
    return PageView(
      controller: pageCubit.pageController,
      scrollDirection: Axis.vertical,
      onPageChanged: pageCubit.changePage,
      children: [
        HomePage(
          height: height,
          width: width,
          isMobile: isMobile,
          isTablet: isTablet,
        ),
        AboutMePage(
          height: height,
          width: width,
          isMobile: isMobile,
          isTablet: isTablet,
        ),
        ExperiencePage(
          height: height,
          width: width,
          isMobile: isMobile,
          isTablet: isTablet,
        ),
        ProjectPage(
          height: height,
          width: width,
          isMobile: isMobile,
          isTablet: isTablet,
        ),
        ContactMePage(
          height: height,
          width: width,
          isMobile: isMobile,
          isTablet: isTablet,
        ),
      ],
    );
  }
}
