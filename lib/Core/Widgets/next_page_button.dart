import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_state.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_cubit.dart';

class NextPageButton extends StatelessWidget {
  const NextPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageViewNavigationCubit, PageViewNavigationState>(
      builder: (context, state) {
        int currentIndex = 0;
        if (state is PageViewNavigationChanged) {
          currentIndex = state.pageIndex;
        }

        return IconButton(
          onPressed: () {
            int nextIndex = currentIndex + 1;
            if (nextIndex <= 4) {
              context.read<PageViewNavigationCubit>().changePage(nextIndex);
            }
          },
          icon: Icon(Icons.arrow_downward),
        );
      },
    );
  }
}
