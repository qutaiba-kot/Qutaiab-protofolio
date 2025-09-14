import 'package:flutter/material.dart';
import 'package:protofolio/Core/Widgets/row_selection_page.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double width;
  const HomeAppBar({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    final double fontSize = width < 600 ? 25 :width < 1200 ? 40 : 50; 
    return AppBar(
      title:  Text("Qutaiba Hassan", style: TextStyle(fontSize:fontSize)),
      leading: Text(""),
      actions: [
        if (width < 1200)
          IconButton(
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
            icon: const Icon(Icons.menu),
          )
        else
          RowSelectionPage(width: width),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
