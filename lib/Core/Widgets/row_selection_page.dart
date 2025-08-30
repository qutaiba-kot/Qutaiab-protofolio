import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_cubit.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_state.dart';

class RowSelectionPage extends StatelessWidget {
  const RowSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageViewNavigationCubit, PageViewNavigationState>(
      builder: (context, state) {
        int currentIndex = 0;
        if (state is PageViewNavigationChanged) {
          currentIndex = state.pageIndex;
        }
        Widget navItem(String title, int index) {
          bool isSelected = currentIndex == index;
          return InkWell(
            onTap: () => context.read<PageViewNavigationCubit>().changePage(index),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          );
        }
        return Row(
          children: [
            navItem("About", 1),
            SizedBox(width: 40.w),
            navItem("Experince", 2),
            SizedBox(width: 40.w),
            navItem("Projects", 3),
            SizedBox(width: 40.w),
            navItem("Contacts", 4),
            SizedBox(width: 40.w),
          ],
        );
      },
    );
  }
}
