import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/Page%20View/Responsive%20helper/page_view_responsive.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_state.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_cubit.dart';

class RowSelectionPage extends StatelessWidget {
  final double width;
  final double height;
  final bool isMobile;
  final bool isTablet;

  const RowSelectionPage({
    super.key,
    required this.width,
    required this.height,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    final sizes = PageViewResponsive(
      width: width,
      height: height,
      isMobile: isMobile,
      isTablet: isTablet,
    );

    final navItems = [
      {"title": "Home", "index": 0},
      {"title": "About", "index": 1},
      {"title": "Experience", "index": 2},
      {"title": "Projects", "index": 3},
      {"title": "Contacts", "index": 4},
    ];

    return BlocSelector<PageViewNavigationCubit, PageViewNavigationState, int>(
      selector: (state) =>
          (state is PageViewNavigationChanged) ? state.pageIndex : 0,
      builder: (context, currentIndex) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: navItems.map((item) {
            final isSelected = currentIndex == item["index"];
            final title = item["title"] as String;
            final index = item["index"] as int;
        
            return Padding(
              padding: EdgeInsets.all(20),
              child: _NavItem(
                title: title,
                index: index,
                isSelected: isSelected,
                fontSize: sizes.fontSize,
              ),
            );
          }).toList(),
        );
      },
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
  final ValueNotifier<bool> isHovering = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => isHovering.value = true,
      onExit: (_) => isHovering.value = false,
      child: GestureDetector(
        onTap: () =>
            context.read<PageViewNavigationCubit>().changePage(widget.index),
        child: ValueListenableBuilder<bool>(
          valueListenable: isHovering,
          builder: (context, hovering, child) {
            return AnimatedScale(
              scale: hovering ? 1.2 : 1.0,
              duration: const Duration(milliseconds: 50),
              child: Text(
                widget.title,
                style: TextStyle(
                  fontSize: widget.fontSize,
                  fontWeight: widget.isSelected
                      ? FontWeight.bold
                      : FontWeight.normal,
                  color: widget.isSelected
                      ? AppColors.primary
                      : hovering
                      ? Colors.grey
                      : Colors.white,
                  decoration:  hovering
                      ? TextDecoration.overline
                      : TextDecoration.none,
                  decorationThickness: 1,
                  decorationColor: Colors.blue,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
