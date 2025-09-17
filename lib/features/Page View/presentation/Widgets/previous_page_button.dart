import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_state.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_cubit.dart';

class PreviousPageButton extends StatelessWidget {
  const PreviousPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<PageViewNavigationCubit, PageViewNavigationState, int>(
      selector: (state) =>
          (state is PageViewNavigationChanged) ? state.pageIndex : 0,
      builder: (context, currentIndex) {
        if (currentIndex == 0) {
          return const SizedBox.shrink();
        }

        return HomeAnimation(
          beginOffset: const Offset(1, 0),
          child: IconButton(
            onPressed: () {
              final nextIndex = currentIndex - 1;
              if (nextIndex >= 0) {
                context.read<PageViewNavigationCubit>().changePage(nextIndex);
              }
            },
            icon: const Icon(Icons.arrow_upward_rounded, color: Colors.blue),
          ),
        );
      },
    );
  }
}
