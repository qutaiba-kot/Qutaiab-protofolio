import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/features/About%20Me/presentation/about_me_page.dart';
import 'package:protofolio/features/Contact%20me/presentation/contact_me_page.dart';
import 'package:protofolio/features/Experince/presentation/experience_page.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_cubit.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_state.dart';
import 'package:protofolio/features/Projects/presentation/project_page.dart';
import 'package:protofolio/features/home/presentation/home_page.dart';

class PageViewNavigation extends StatelessWidget {
  PageViewNavigation({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<PageViewNavigationCubit, PageViewNavigationState>(
      listener: (context, state) {
        if (state is PageViewNavigationChanged) {
          if (_pageController.page?.round() != state.pageIndex) {
            _pageController.animateToPage(
              state.pageIndex,
              duration: const Duration(milliseconds: 1700),
              curve: Curves.fastOutSlowIn,
            );
          }
        }
      },
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          scrollDirection: Axis.vertical,
          onPageChanged: (index) {
            context.read<PageViewNavigationCubit>().changePage(index);
          },
          children: [
            HomePage(),
            AboutMePage(),
            ExperiencePage(),
            ProjectPage(),
            ContactMePage(),
          ],
        ),
      ),
    );
  }
}
