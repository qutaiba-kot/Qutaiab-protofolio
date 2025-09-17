import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Responsive%20helper/responsive_helper.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_state.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_cubit.dart';

class RowSelectionPage extends StatelessWidget {
  final double width;
  final double height;
  final bool isMobile ;
 final bool isTablet ;
  const RowSelectionPage({super.key, required this.width, required this.height, required this.isMobile, required this.isTablet});

  @override
  Widget build(BuildContext context) {
    final sizes = RowSelectionPageResponsive(width: width , height: height , isMobile: isMobile , isTablet: isTablet);
    return BlocBuilder<PageViewNavigationCubit, PageViewNavigationState>(
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
                        fontSize: sizes.fontSize,
                        fontWeight: isSelected
                            ? FontWeight.bold
                            : FontWeight.normal,
                        color: isSelected ?   Colors.blue : hovering ? Colors.grey :  Colors.white,
                        decoration: hovering
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        //decorationColor: Colors.grey,
                        decorationThickness: 2,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        }

        return Row(
          children: [
            navItem("About", 1),
            SizedBox(width: width * 0.03),
            navItem("Experince", 2),
            SizedBox(width: width * 0.02),
            navItem("Projects", 3),
            SizedBox(width: width * 0.03),
            navItem("Contacts", 4),
            SizedBox(width: width * 0.03),
          ],
        );
      },
    );
  }
}
