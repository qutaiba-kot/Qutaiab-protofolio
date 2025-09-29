import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Animations/main_animation.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_state.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_cubit.dart';
class NextPageButton extends StatelessWidget {
  const NextPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<PageViewNavigationCubit, PageViewNavigationState, int>(
      selector: (state) =>
          (state is PageViewNavigationChanged) ? state.pageIndex : 0,
      builder: (context, currentIndex) {
        if (currentIndex == 4) return const SizedBox.shrink();

        return MainAnimation(
          delay: Duration(milliseconds: 1800),
          //beginOffset: const Offset(1, 0),
          child: IconButton(
            onPressed: () {
              final nextIndex = currentIndex + 1;
              if (nextIndex <= 4) {
                context.read<PageViewNavigationCubit>().changePage(nextIndex);
              }
            },
            icon: const Icon(Icons.arrow_downward_rounded, color:AppColors.primary),
          ),
        );
      },
    );
  }
}
