import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
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
    final double fontSize = width < 600
        ? 25
        : width < 1200
        ? 40
        : 50;
    return HomeAnimation(
      beginOffset: Offset(1, 0),
      child: AppBar(
        backgroundColor: Colors.transparent, 
        forceMaterialTransparency: true,
        title: Text("", style: TextStyle(fontSize: fontSize , color: Colors.white)),
        leading: Text(""),
        actions: [
          if (width < 1200)
            IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: const Icon(Icons.menu , color: Colors.blue,),
            )
          else
            RowSelectionPage(
              width: width,
              height: height,
              isMobile: isMobile,
              isTablet: isTablet,
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
