import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_state.dart';
import 'package:protofolio/features/Page%20View/logic/cubit/page_view_navigation_cubit.dart';

class BurgerMenuDrawer extends StatelessWidget {
  final double width;
  final double height;
  const BurgerMenuDrawer({
    super.key,
    required this.width,
    required this.height,
  });

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
              return Column(
                children: [
                  SizedBox(height: height * 0.05),
                  SizedBox(
                    height: height * 0.05,
                    width: width * 0.3,
                    child: FittedBox(
                      child: Text(
                        "Go To",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  ),
                  Divider(color: Colors.white,thickness: 1,),
                  SizedBox(height: height * 0.05),
                  SizedBox(
                    height: height * 0.4,
                    width: width * 0.3,
                    child: FittedBox(
                      child: Column(
                        spacing: 20,
                        children: [
                          ...navItems.map((item) {
                            return _NavItem(
                              title: item["title"] as String,
                              index: item["index"] as int,
                              isSelected: currentIndex == item["index"],
                              fontSize: (10),
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                ],
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
    final textColor = widget.isSelected ? AppColors.primary : Colors.white;

    return GestureDetector(
      onTap: () {
        Scaffold.of(context).closeEndDrawer();
        context.read<PageViewNavigationCubit>().changePage(widget.index);
      },
      child: Text(
        widget.title,
        style: TextStyle(fontSize: widget.fontSize, color: textColor),
      ),
    );
  }
}
