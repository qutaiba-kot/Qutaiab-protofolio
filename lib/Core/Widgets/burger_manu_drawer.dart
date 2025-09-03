import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_state.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_cubit.dart';

class BurgerManuDrawer extends StatelessWidget {
  const BurgerManuDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: BlocBuilder<PageViewNavigationCubit, PageViewNavigationState>(
        builder: (context, state) {
          int currentIndex = 0;
          if (state is PageViewNavigationChanged) {
            currentIndex = state.pageIndex;
          }
          Widget navItem(String title, int index) {
            bool isSelected = currentIndex == index;
            ValueNotifier<bool> isHovering = ValueNotifier(false);
            return MouseRegion(
              onEnter: (_) => isHovering.value = true,
              onExit: (_) => isHovering.value = false,
              child: GestureDetector(
                onTap: () =>
                    context.read<PageViewNavigationCubit>().changePage(index),
                child: ValueListenableBuilder<bool>(
                  valueListenable: isHovering,
                  builder: (context, hovering, child) {
                    return AnimatedScale(
                      scale: hovering ? 1.2 : 1.0,
                      duration: Duration(milliseconds: 50),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: isSelected
                              ? FontWeight.bold
                              : FontWeight.normal,
                          color: hovering ? Colors.grey : Colors.black,
                          decoration: hovering
                              ? TextDecoration.underline
                              : TextDecoration.none,
                          decorationColor: Colors.grey,
                          decorationThickness: 2,
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              navItem("About", 1),
              navItem("Experience", 2),
              navItem("Projects", 3),
              navItem("Contacts", 4),
            ],
          );
        },
      ),
    );
  }
}
