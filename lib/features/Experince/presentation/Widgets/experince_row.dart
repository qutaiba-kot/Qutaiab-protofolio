import 'package:flutter/material.dart';
import 'package:protofolio/features/Experince/presentation/Widgets/experince_conatiner_widget.dart';

class ExperinceRow extends StatelessWidget {
  final double height;
  final double width;
  const ExperinceRow({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ExperinceConatinerWidget(isMobile: false , isTablet: false , height:  height , width:  width),
        SizedBox(width: width * 0.020),
        ExperinceConatinerWidget(isMobile: false , isTablet: false , height:  height , width:  width),
      ],
    );
  }
}
