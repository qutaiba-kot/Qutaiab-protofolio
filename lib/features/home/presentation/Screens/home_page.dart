import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/features/home/logic/cubit/home_cubit.dart';
import 'package:protofolio/features/home/presentation/Widgets/home_pic.dart';
import 'package:protofolio/features/home/presentation/Widgets/intro_persona_info_widget.dart';

class HomePage extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile;
  final bool isTablet;
  const HomePage({
    super.key,
    required this.height,
    required this.width,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: SizedBox(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: isMobile || isTablet
              ? Column(
                  children: [
                    SizedBox(height: height * 0.2),
                    HomePic(height: height, width: width, isMobile: isMobile),
                    IntroPersonaInfoWidget(
                      isTablet: isTablet,
                      isMobile: isMobile,
                      height: height,
                      width: width,
                    ),
                  ],
                )
              : Row(
                  children: [
                    SizedBox(width: width * 0.2),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: height * 0.3),
                        IntroPersonaInfoWidget(
                          isTablet: false,
                          isMobile: false,
                          height: height,
                          width: width,
                        ),
                      ],
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
