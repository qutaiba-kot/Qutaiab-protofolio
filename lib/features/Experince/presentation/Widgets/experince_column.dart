import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
import 'package:protofolio/features/Experince/presentation/Widgets/experince_conatiner_widget.dart';

class ExperinceColumn extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  final double height;
  final double width;
  const ExperinceColumn({
    super.key,
    required this.height,
    required this.width,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HomeAnimation(
            beginOffset: Offset(-1, 0),
            child: ExperinceConatinerWidget(
              isMobile: isMobile,
              isTablet: isTablet,
              height: height,
              width: width,
            ),
          ),
          SizedBox(height: height * 0.050),
          HomeAnimation(
            beginOffset: Offset(1, 0),
            child: ExperinceConatinerWidget(
              isMobile: isMobile,
              isTablet: isTablet,
              height: height,
              width: width,
            ),
          ),
        ],
      ),
    );
  }
}
