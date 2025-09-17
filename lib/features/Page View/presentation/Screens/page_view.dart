import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/features/Page%20View/Responsive%20helper/responsive_helper.dart';
import 'package:protofolio/Core/cubit/screen_cubit.dart';
import 'package:protofolio/Core/cubit/screen_state.dart';
import 'package:protofolio/features/Page%20View/presentation/Widgets/next_page_button.dart';
import 'package:protofolio/features/About%20Me/presentation/Screens/about_me_page.dart';
import 'package:protofolio/features/Contact%20me/presentation/Screens/contact_me_page.dart';
import 'package:protofolio/features/Experince/presentation/Screens/experience_page.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_state.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_cubit.dart';
import 'package:protofolio/features/Page%20View/presentation/Widgets/previous_page_button.dart';
import 'package:protofolio/features/Page%20View/presentation/Widgets/scrollbar_custome.dart';
import 'package:protofolio/features/Projects/presentation/Screens/project_page.dart';
import 'package:protofolio/features/home/presentation/Screens/home_page.dart';
import 'package:protofolio/features/Page%20View/presentation/Widgets/burger_manu_drawer.dart';
import 'package:protofolio/features/Page%20View/presentation/Widgets/app_bar_customized.dart';

class PageViewNavigation extends StatelessWidget {
  const PageViewNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ScreenCubit()),
        BlocProvider(create: (_) => PageViewNavigationCubit(width, height)),
      ],
      child: BlocBuilder<ScreenCubit, ScreenState>(
        builder: (context, state) {
          final isMobile = state.deviceType == DeviceTypes.mobile;
          final isTablet = state.deviceType == DeviceTypes.tablet;
          final pageCubit = context.read<PageViewNavigationCubit>();
          return Scaffold(
            backgroundColor: Colors.transparent,
            extendBodyBehindAppBar: true,
            appBar: AppBarCustomized(
              width: width,
              height: height,
              isMobile: isMobile,
              isTablet: isTablet,
            ),
            endDrawer: BurgerMenuDrawer(width: width),
            body: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    "assets/files/flutter_pic.png",
                    fit: BoxFit.fill,
                  ),
                ),
                PageView(
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
                ),
                if (!(isMobile || isTablet))
                  BlocSelector<
                    PageViewNavigationCubit,
                    PageViewNavigationState,
                    int
                  >(
                    selector: (state) => state.pageIndex,
                    builder: (context, pageIndex) {
                      return Positioned(
                        bottom: height * 0.15,
                        right: width * 0.015,
                        child: Scrollbar(
                          child: ScrollbarCustome(
                            currentScreen: pageIndex,
                            height: height,
                            width: width,
                          ),
                        ),
                      );
                    },
                  ),
                Positioned(
                  child: NextPageButton(),
                  bottom: height * 0.1,
                  right: positionedWidth(
                    width: width,
                    isTablet: isTablet,
                    isMobile: isMobile,
                  ),
                ),
                Positioned(
                  child: PreviousPageButton(),
                  bottom: height * 0.8,
                  right: positionedWidth(
                    width: width,
                    isTablet: isTablet,
                    isMobile: isMobile,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
