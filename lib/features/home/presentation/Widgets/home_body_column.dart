import 'package:flutter/material.dart';
import 'package:protofolio/features/home/presentation/Widgets/intro_persona_info_widget.dart';
import 'package:protofolio/features/home/presentation/Widgets/home_pic.dart';

class HomeBodyColumn extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile ;
  const HomeBodyColumn({super.key, required this.height, required this.width, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    final double radius = isMobile ? (width)*0.3 : (width)*0.15;
    final double containerHeight = height * 0.40;
    final double containerWidth = isMobile ?width * 0.80 : width * 0.60;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: height*0.15,),
        HomePic(radius: radius),
        IntroPersonaInfoWidget(
          containerWidth: containerWidth,
          containerHeight: containerHeight,
        ),
      ],
    );
  }
}
