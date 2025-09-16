import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_cubit.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_state.dart';
import 'package:protofolio/Core/Widgets/title_and_sub.dart';
import 'package:protofolio/features/About%20Me/presentation/Widgets/about_me_column.dart';
import 'package:protofolio/features/About%20Me/presentation/Widgets/about_me_row.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BlocBuilder<ScreenCubit, ScreenState>(
        builder: (context, state) {
          final isMobile = state.deviceType == DeviceTypes.mobile;
          final isTablet = state.deviceType == DeviceTypes.tablet;
          return SingleChildScrollView(
            child: SizedBox(
              height: state.height,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TitleAndSub(
                        isMobile: isMobile,
                        isTablet: isTablet,
                        height: state.height,
                        width: state.width,
                        title: "Get To Know More",
                        subTitle: "About Me",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: isMobile || isTablet
                        ? state.height * 0.04
                        : state.height * 0.15,
                  ),
                  isMobile || isTablet
                      ? AboutMeColumn(
                          height: state.height,
                          width: state.width,
                          isMobile: isMobile,
                          isTablet: isTablet,
                        )
                      : AboutMeRow(height: state.height, width: state.width),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
