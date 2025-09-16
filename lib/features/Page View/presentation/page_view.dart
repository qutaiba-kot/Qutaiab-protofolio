import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Responsive%20helper/responsive_helper.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_cubit.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_state.dart';
import 'package:protofolio/Core/Widgets/next_page_button.dart';
import 'package:protofolio/features/About%20Me/presentation/Screens/about_me_page.dart';
import 'package:protofolio/features/Contact%20me/presentation/Screens/contact_me_page.dart';
import 'package:protofolio/features/Experince/presentation/Screens/experience_page.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_state.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_cubit.dart';
import 'package:protofolio/features/Projects/presentation/Screens/project_page.dart';
import 'package:protofolio/features/home/presentation/Screens/home_page.dart';

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
              duration: const Duration(milliseconds: 800),
              curve: Curves.fastOutSlowIn,
            );
          }
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/files/flutter_pic.png",
                fit: BoxFit.fill,
              ),
            ),
            PageView(
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
            BlocBuilder<ScreenCubit, ScreenState>(
              builder: (context, state) {
                final isMobile = state.deviceType == DeviceTypes.mobile;
                final isTablet = state.deviceType == DeviceTypes.tablet;
                return Positioned(
                  child: NextPageButton(),
                  bottom: state.height * 0.1,
                  right: positionedWidth(
                    width: state.width,
                    isTablet: isTablet,
                    isMobile: isMobile,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
