import 'package:flutter/material.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';

class ExperinceSkillCard extends StatelessWidget {
  final String text;
  final double height;
  final double width;

  const ExperinceSkillCard({
    super.key,
    required this.text,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.15,
      height: height * 0.1,
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(text, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
