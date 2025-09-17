import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';

class ScrollbarCustome extends StatelessWidget {
  final int currentScreen;
  final double height;
  final double width;
  const ScrollbarCustome({
    super.key,
    required this.height,
    required this.width,
    required this.currentScreen,
  });

  @override
  Widget build(BuildContext context) {
    final double statusBar = currentScreen == 0
        ? height * 0.12
        : currentScreen == 1
        ? height * 0.24
        : currentScreen == 2
        ? height * 0.36
        : currentScreen == 3
        ? height * 0.48
        : height * 0.7;

    return HomeAnimation(
      beginOffset: Offset(1, 0),
      child: Container(
        height: height*0.65,
        width: width * 0.001,
        color: Colors.blueGrey,
        child: Align(
          alignment: Alignment.topCenter, 
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 600),
            curve: Curves.easeInOut,
            height: statusBar,
            width: width * 0.005,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
    );
  }
}
