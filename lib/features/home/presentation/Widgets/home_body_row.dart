import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
import 'package:protofolio/features/home/presentation/Widgets/intro_persona_info_widget.dart';

class HomeBodyRow extends StatelessWidget {
  final double height;
  final double width;
  const HomeBodyRow({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    final double containerHeight = height * 0.5;
    final double containerWidth = width * 0.35;
    return HomeAnimation(
      child: Column(
        children: [
          SizedBox(height: containerHeight * 0.55),
          Row(
            children: [
              SizedBox(width: containerWidth * 0.4),
              IntroPersonaInfoWidget(
                containerWidth: containerWidth,
                containerHeight: containerHeight,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
