import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Sizer/main_sizer.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/features/Page%20View/Responsive%20helper/page_view_responsive.dart';
import 'package:protofolio/Core/cubit/screen_cubit.dart';
import 'package:protofolio/Core/cubit/screen_state.dart';
import 'package:protofolio/features/Page%20View/presentation/Widgets/next_page_button.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_cubit.dart';
import 'package:protofolio/features/Page%20View/presentation/Widgets/page_view_widget.dart';
import 'package:protofolio/features/Page%20View/presentation/Widgets/previous_page_button.dart';
import 'package:protofolio/features/Page%20View/presentation/Widgets/scrollbar_custome.dart';
import 'package:protofolio/features/Page%20View/presentation/Widgets/burger_manu_drawer.dart';
import 'package:protofolio/features/Page%20View/presentation/Widgets/app_bar_customized.dart';

class PageViewNavigation extends StatelessWidget {
  const PageViewNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ScreenCubit()),
        BlocProvider(create: (_) => PageViewNavigationCubit()),
      ],
      child: BlocSelector<ScreenCubit, ScreenState, DeviceTypes>(
        selector: (state) => state.deviceType,
        builder: (context, deviceType) {
          final width = MediaQuery.of(context).size.width;
          final height = MediaQuery.of(context).size.height;
          context.read<ScreenCubit>().updateWidth(width, height);
          final isMobile = deviceType == DeviceTypes.mobile;
          final isTablet = deviceType == DeviceTypes.tablet;
          final mainSizer = MainSizer(height: height, width: width, isMobile: isMobile, isTablet: isTablet);
          final sizes = PageViewResponsive(
            mainSizer: mainSizer
          );
          return Scaffold(
            backgroundColor: Colors.black,
            extendBodyBehindAppBar: true,
            appBar: AppBarCustomized(
              isMobile: isMobile,
              isTablet: isTablet,
            ),
            endDrawer: isMobile || isTablet
                ? BurgerMenuDrawer(width: width, height: height)
                : null,
            body: Stack(
              children: [
                isTablet || isMobile
                    ? Positioned.fill(
                        child: Image.network(profile!.mobAndTabBackgroundPic),
                      )
                    : Positioned.fill(
                        child: Image.network(profile!.pcBackgroundPic),
                      ),
                PageViewWidget(
                  mainSizer: mainSizer,
                ),
                Positioned(
                  bottom: height * 0.15,
                  right: width * 0.015,
                  child: Offstage(
                    offstage: isTablet || isMobile,
                    child: ScrollbarCustome(mainSizer: mainSizer,),
                  ),
                ),
                Positioned(
                  bottom: height * 0.8,
                  right: sizes.positionedWidth,
                  child: const PreviousPageButton(),
                ),
                Positioned(
                  bottom: height * 0.1,
                  right: sizes.positionedWidth,
                  child: const NextPageButton(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
