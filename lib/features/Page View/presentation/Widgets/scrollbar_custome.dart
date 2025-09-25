import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/Page%20View/Responsive%20helper/page_view_responsive.dart';

import '../../logic/cubit/page_view_navigation_cubit.dart';
import '../../logic/cubit/page_view_navigation_state.dart';

class ScrollbarCustome extends StatelessWidget {
  final double height;
  final double width;
  const ScrollbarCustome({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<PageViewNavigationCubit, PageViewNavigationState, int>(
      selector: (state) {
        if (state is PageViewNavigationChanged) {
          return state.pageIndex;
        }
        return 0;
      },
      builder: (context, pageIndex) {
        final double statusBar = PageViewResponsive(
          width: width,
          height: height,
          isMobile: false,
          isTablet: false,
          pageIndex: pageIndex,
        ).statusBar;
        return HomeAnimation(
          beginOffset: const Offset(1, 0),
          child: Container(
            height: height * 0.65,
            width: width * 0.001,
            color: Colors.blueGrey,
            child: Align(
              alignment: Alignment.topCenter,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 600),
                curve: Curves.easeInOut,
                height: statusBar,
                width: width * 0.005,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
