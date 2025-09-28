import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/Page%20View/presentation/Widgets/row_selection_page.dart';

class AppBarCustomized extends StatelessWidget implements PreferredSizeWidget {
  final bool isMobile;
  final bool isTablet;
  final double width;
  final double height;
  const AppBarCustomized({
    super.key,
    required this.width,
    required this.height,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    return HomeAnimation(
      beginOffset: Offset(0, -1),
      child: AppBar(
        backgroundColor: Colors.transparent,
        forceMaterialTransparency: true,
        title: !(isMobile || isTablet)
            ? RowSelectionPage(width: width, height: height, isMobile: isMobile, isTablet: isTablet)
            : null,
        centerTitle: false,
        actions: isMobile || isTablet
            ? [
                IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: const Icon(Icons.menu, color: AppColors.primary),
                ),
              ]
            : [],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
