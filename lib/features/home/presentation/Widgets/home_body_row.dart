import 'package:flutter/material.dart';
import 'package:protofolio/features/home/presentation/Widgets/intro_persona_info_widget.dart';
import 'package:protofolio/features/home/presentation/Widgets/home_pic.dart';

class HomeBodyRow extends StatelessWidget {
  final double height;
  final double width;
  const HomeBodyRow({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    final double containerHeight = height * 0.4;
    final double containerWidth = width * 0.25;
    return Column(
      children: [
        SizedBox(height: containerHeight * 0.5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HomePic(radius: (containerHeight + containerWidth) / 3.5),
            SizedBox(width: containerWidth * 0.3),
            IntroPersonaInfoWidget(
              containerWidth: containerWidth,
              containerHeight: containerHeight,
            ),
          ],
        ),
      ],
    );
  }
}
