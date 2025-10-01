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
                  Divider(color: Colors.white,thickness: 2,),
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
                              height: height,
                              width: width,
                              title: item["title"] as String,
                              index: item["index"] as int,
                              isSelected: currentIndex == item["index"],
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
  final double height;
  final double width;

  const _NavItem({
    required this.title,
    required this.index,
    required this.isSelected,
    required this.height,
    required this.width,
  });

  @override
  State<_NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<_NavItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Scaffold.of(context).closeEndDrawer();
        context.read<PageViewNavigationCubit>().changePage(widget.index);
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              widget.title,
              style: TextStyle(
                fontSize: 20,
                color: widget.isSelected ? AppColors.primary : Colors.white,
              ),
            ),
          ),
          Container(
            height: widget.height * 0.001,
            width: widget.width * 0.3,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
