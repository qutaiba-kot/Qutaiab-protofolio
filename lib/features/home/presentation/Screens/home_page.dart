import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/features/home/Responsive%20Helper/home_responsive.dart';
import 'package:protofolio/features/home/logic/cubit/home_cubit.dart';
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
    final sizes = HomeResponsive(
      isMobile: isMobile,
      isTablet: isTablet,
      height: height,
      width: width,
    );
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: SizedBox(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: isMobile || isTablet ? height * 0.44 : height * 0.32,
              ),
              isMobile || isTablet
                  ? IntroPersonaInfoWidget(
                      isTablet: isTablet,
                      isMobile: isMobile,
                      height: height,
                      width: width,
                    )
                  : Row(
                      children: [
                        SizedBox(width: width * 0.1),
                        IntroPersonaInfoWidget(
                          isTablet: false,
                          isMobile: false,
                          height: height,
                          width: width,
                        ),
                      ],
                    ),
              SizedBox(
                height: isMobile || isTablet ? height * 0.09 : height * 0.2,
              ),
              SizedBox(
                width: sizes.widthContainerTiele,
                child: FittedBox(
                  child: Text(
                    "IN THE POWER OF FLUTTER",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
