import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/home/presentation/Widgets/contact_me_button.dart';
import 'package:protofolio/features/home/presentation/Widgets/dowmload_cv_button.dart';

class IntroPersonaInfoWidget extends StatelessWidget {
  final double containerWidth;
  final double containerHeight;

  const IntroPersonaInfoWidget({
    Key? key,
    required this.containerWidth,
    required this.containerHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      height: containerHeight,
      child: LayoutBuilder(
        builder: (context, constraints) {
          double helloFontSize = ((constraints.maxHeight * constraints.maxWidth) / 4500) * 0.7;
          double nameFontSize = ((constraints.maxHeight * constraints.maxWidth) / 4500);
          double titleFontSize = ((constraints.maxHeight * constraints.maxWidth) / 4500) * 0.8;
          double iconSize =  ((constraints.maxHeight * constraints.maxWidth) / 4500);
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello, I'm", style: TextStyle(fontSize: helloFontSize, color: Colors.white)),
              Text(
                "Qutaiba Hassan",
                style: TextStyle(
                  fontSize: nameFontSize,
                  fontWeight: FontWeight.bold, color: Colors.white
                ),
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary
                ),
              ),
              SizedBox(height: constraints.maxHeight * 0.055),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DowmloadCvButton(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    
                  ),
                  SizedBox(width: constraints.maxWidth * 0.02),
                  ContactMeButton(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                  ),
                ],
              ),
              SizedBox(height: constraints.maxHeight * 0.07),
              Icon(
                FontAwesomeIcons.flutter,
                size: iconSize,
                color: AppColors.primary,
              ),
            ],
          );
        },
      ),
    );
  }
}
