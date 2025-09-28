import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_state.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_cubit.dart';

class BurgerMenuDrawer extends StatelessWidget {
  final double width;
  const BurgerMenuDrawer({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    final navItems = [
      {"title": "Home", "index": 0},
      {"title": "About", "index": 1},
      {"title": "Experience", "index": 2},
      {"title": "Projects", "index": 3},
      {"title": "Contacts", "index": 4},
    ];

    return Drawer(
      width: width * 0.3,
      backgroundColor: AppColors.secondary,
      child:
          BlocSelector<PageViewNavigationCubit, PageViewNavigationState, int>(
            selector: (state) =>
                (state is PageViewNavigationChanged) ? state.pageIndex : 0,
            builder: (context, currentIndex) {
              return FittedBox(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Go To",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: width < 600 ? 20 : 40,
                      ),
                    ),
                    ...navItems.map((item) {
                      return _NavItem(
                        title: item["title"] as String,
                        index: item["index"] as int,
                        isSelected: currentIndex == item["index"],
                        fontSize: (width * 0.03),
                      );
                    }),
                  ],
                ),
              );
            },
          ),
    );
  }
}

class _NavItem extends StatefulWidget {
  final String title;
  final int index;
  final bool isSelected;
  final double fontSize;

  const _NavItem({
    required this.title,
    required this.index,
    required this.isSelected,
    required this.fontSize,
  });

  @override
  State<_NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<_NavItem> {
  @override
  Widget build(BuildContext context) {
    final bgColor = Colors.white.withValues(alpha: 0.2);
    final textColor = widget.isSelected ? AppColors.primary : Colors.white;

    return GestureDetector(
      onTap: () {
        Scaffold.of(context).closeEndDrawer();
        context.read<PageViewNavigationCubit>().changePage(widget.index);
      },

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          widget.title,
          style: TextStyle(fontSize: widget.fontSize, color: textColor),
        ),
      ),
    );
  }
}
