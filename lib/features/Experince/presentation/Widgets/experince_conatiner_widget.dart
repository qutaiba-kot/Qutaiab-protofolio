import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protofolio/features/Experince/Responsive%20Helper/about_me_responsive.dart';
import 'package:protofolio/features/Experince/presentation/Widgets/experince_widget.dart';

class ExperinceConatinerWidget extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  final double height ; 
  final double width ; 
  const ExperinceConatinerWidget({
    super.key, required this.height, required this.width, required this.isMobile, required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    final double containerHeight = isMobile || isTablet? height*0.3: height*0.5 ; 
    final double containerWidth = isMobile || isTablet? width*0.74: width*0.35 ; 

    final sizes = ExperienceSizes(isMobile:isMobile || isTablet,height: containerHeight, width: containerWidth);
    return Container(
      height: containerHeight,
      width: containerWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1.5),
        borderRadius: BorderRadius.all(Radius.circular(isMobile || isTablet? 90:40)),
      ),
      child: Column(
        children: [
          SizedBox(height: height* 0.025),
          Text(
            "FrontEnd Development",
            style: TextStyle(fontSize: sizes.containerTitle, color: Colors.grey),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: ExperinceWidget(
                      height: containerHeight,
                      width: containerWidth,
                      isMobile: isMobile , isTablet:isTablet , 
                      skill: "Flutter",
                      level: "Perfect",
                      icon: FontAwesomeIcons.flutter,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: ExperinceWidget(
                      height: containerHeight,
                      width: containerWidth,
                      isMobile: isMobile , isTablet:isTablet , 
                      skill: "Figma",
                      level: "Mid",
                      icon: FontAwesomeIcons.figma,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: ExperinceWidget(
                      height: containerHeight,
                      width: containerWidth,
                      isMobile: isMobile , isTablet:isTablet , 
                      skill: "Java",
                      level: "Perfect",
                      icon: FontAwesomeIcons.java,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: ExperinceWidget(
                      height: containerHeight,
                      width: containerWidth,
                      isMobile: isMobile , isTablet:isTablet , 
                      skill: "C++",
                      level: "Perfect",
                      icon: FontAwesomeIcons.c,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: ExperinceWidget(
                      height: containerHeight,
                      width: containerWidth,
                      isMobile: isMobile , isTablet:isTablet , 
                      skill: "VB",
                      level: "Perfect",
                      icon: FontAwesomeIcons.certificate,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: ExperinceWidget(
                      height: containerHeight,
                      width: containerWidth,
                      isMobile: isMobile , isTablet:isTablet , 
                      skill: "UI/UX",
                      level: "Perfect",
                      icon: FontAwesomeIcons.uikit,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
