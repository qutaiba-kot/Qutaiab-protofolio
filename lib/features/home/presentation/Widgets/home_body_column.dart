import 'package:flutter/material.dart';
import 'package:protofolio/Core/Animations/home_animation.dart';
import 'package:protofolio/features/home/presentation/Widgets/intro_persona_info_widget.dart';

class HomeBodyColumn extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile ;
  const HomeBodyColumn({super.key, required this.height, required this.width, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    final double containerHeight = height * 0.40;
    final double containerWidth = isMobile ?width * 0.80 : width * 0.60;
    return HomeAnimation(
      child: Row(
        children: [
          SizedBox(width: isMobile ?width*0.1 : width*0.2,),
          Column(
            children: [
              SizedBox(height: height*0.3,),
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
