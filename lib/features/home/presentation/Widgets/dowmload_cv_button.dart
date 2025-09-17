import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/features/home/logic/cubit/home_cubit.dart';

class DowmloadCvButton extends StatelessWidget {
  final double height;
  final double width;
  const DowmloadCvButton({
    super.key,
    required this.height,
    required this.width,
  });
  @override
  Widget build(BuildContext context) {
    final double buttonHeight = (height * 0.10);
    final double buttonWidth = (width * 0.35);
    final double buttonText = (buttonWidth * buttonHeight) / 450;
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: () {
          context.read<HomeCubit>().downloadCv();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(width * 0.08),
            side: const BorderSide(color: Colors.transparent, width: 2),
          ),
        ),
        child: Text(
          "Download CV",
          style: TextStyle(
            fontSize: buttonText,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
