import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_state.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_cubit.dart';
class BurgerMenuDrawer extends StatelessWidget {
  final double width;
  const BurgerMenuDrawer({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    final navItems = [
      {"title": "About", "index": 1},
      {"title": "Experience", "index": 2},
      {"title": "Projects", "index": 3},
      {"title": "Contacts", "index": 4},
    ];

    return Drawer(
      backgroundColor: Colors.blue,
      child: BlocSelector<PageViewNavigationCubit, PageViewNavigationState, int>(
        selector: (state) =>
            (state is PageViewNavigationChanged) ? state.pageIndex : 0,
        builder: (context, currentIndex) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: navItems.map((item) {
              return _NavItem(
                title: item["title"] as String,
                index: item["index"] as int,
                isSelected: currentIndex == item["index"],
                fontSize: width * 0.03,
              );
            }).toList(),
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
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          context.read<PageViewNavigationCubit>().changePage(widget.index),
      onHover: (hovering) => setState(() => isHovering = hovering),
      child: AnimatedScale(
        scale: isHovering ? 1.2 : 1.0,
        duration: const Duration(milliseconds: 100),
        child: Text(
          widget.title,
          style: TextStyle(
            fontSize: widget.fontSize,
            fontWeight: widget.isSelected ? FontWeight.bold : FontWeight.normal,
            color: widget.isSelected
                ? Colors.white
                : isHovering
                    ? Colors.grey[200]
                    : Colors.black,
            decoration:
                isHovering ? TextDecoration.underline : TextDecoration.none,
            decorationThickness: 2,
          ),
        ),
      ),
    );
  }
}
