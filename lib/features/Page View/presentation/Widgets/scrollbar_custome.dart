import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Animations/main_animation.dart';
import 'package:protofolio/Core/Sizer/main_sizer.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/Page%20View/Responsive%20helper/page_view_responsive.dart';

import '../../logic/cubit/page_view_navigation_cubit.dart';
import '../../logic/cubit/page_view_navigation_state.dart';

class ScrollbarCustome extends StatelessWidget {
  final MainSizer mainSizer;
  const ScrollbarCustome({
    super.key,
    required this.mainSizer
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
        final double statusBarHeight = PageViewResponsive(
          mainSizer: mainSizer,
          pageIndex: pageIndex,
        ).statusBar;
        return MainAnimation(
          delay: Duration(milliseconds: 1200),
          child: Container(
            height: mainSizer.height * 0.65,
            width: mainSizer.width * 0.001,
            color: Colors.blueGrey,
            child: Align(
              alignment: Alignment.topCenter,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 600),
                curve: Curves.easeInOut,
                height: statusBarHeight,
                width: mainSizer.width * 0.005,
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
