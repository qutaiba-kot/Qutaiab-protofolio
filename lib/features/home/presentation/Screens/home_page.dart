import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Animations/main_animation.dart';
import 'package:protofolio/Core/Sizer/main_sizer.dart';
import 'package:protofolio/features/home/Responsive%20Helper/home_responsive.dart';
import 'package:protofolio/features/home/logic/cubit/home_cubit.dart';
import 'package:protofolio/features/home/presentation/Widgets/intro_persona_info_widget.dart';

class HomePage extends StatelessWidget {
  final MainSizer mainSizer;
  const HomePage({super.key, required this.mainSizer});

  @override
  Widget build(BuildContext context) {
    final sizes = HomeResponsive(mainSizer: mainSizer);
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: SizedBox(
        width: mainSizer.width,
        height: mainSizer.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: mainSizer.isMobile || mainSizer.isTablet
                    ? mainSizer.height * 0.4
                    : mainSizer.height * 0.32,
              ),
              mainSizer.isMobile || mainSizer.isTablet
                  ? IntroPersonaInfoWidget(sizes: sizes)
                  : Row(
                      children: [
                        SizedBox(width: mainSizer.width * 0.1),
                        IntroPersonaInfoWidget(sizes: sizes),
                      ],
                    ),
              SizedBox(
                height: mainSizer.isMobile || mainSizer.isTablet
                    ? mainSizer.height * 0.13
                    : mainSizer.height * 0.2,
              ),
              MainAnimation(
                delay: Duration(milliseconds: 200),
                child: SizedBox(
                  width: sizes.widthContainerTitle,
                  child: FittedBox(
                    child: const Text(
                      "IN THE POWER OF FLUTTER",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
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
