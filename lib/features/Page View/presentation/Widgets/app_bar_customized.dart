import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/main_animation.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/Page%20View/presentation/Widgets/row_selection_page.dart';

class AppBarCustomized extends StatelessWidget implements PreferredSizeWidget {
  final bool isMobile;
  final bool isTablet;
  const AppBarCustomized({
    super.key,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    return MainAnimation(
      delay: Duration(milliseconds: 900),
      child: AppBar(
        backgroundColor: Colors.transparent,
        forceMaterialTransparency: true,
        title: !(isMobile || isTablet)
            ? RowSelectionPage()
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
