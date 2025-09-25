import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/features/home/Responsive%20Helper/home_responsive.dart';
import 'package:protofolio/features/home/logic/cubit/home_cubit.dart';

class DowmloadCvButton extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile;
  final bool isTablet;
  const DowmloadCvButton({
    super.key,
    required this.height,
    required this.width,
    required this.isMobile,
    required this.isTablet,
  });
  @override
  Widget build(BuildContext context) {
    final sizes = HomeResponsive(
      isMobile: isMobile,
      isTablet: isTablet,
      height: height,
      width: width,
    );
    return SizedBox(
      width: sizes.buttonWidth,
      height:sizes.buttonHeight,
      child: ElevatedButton(
        onPressed: () {
          context.read<HomeCubit>().downloadCv();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          "Download CV",
          style: TextStyle(
            fontSize: sizes.buttonTextFontsize,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
