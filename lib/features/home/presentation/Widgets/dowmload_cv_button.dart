import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/features/home/Responsive%20Helper/home_responsive.dart';
import 'package:protofolio/features/home/logic/cubit/home_cubit.dart';

class DowmloadCvButton extends StatelessWidget {
  final HomeResponsive sizes;
  const DowmloadCvButton({
    super.key, required this.sizes,
  });
  @override
  Widget build(BuildContext context) {
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
        child: FittedBox(
          fit: BoxFit.fill,
          child: Text(
            "Download CV",
            style: TextStyle(
              fontSize:  12.8,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
