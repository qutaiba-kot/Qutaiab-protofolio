import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_cubit.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_state.dart';
import 'package:protofolio/features/Experince/presentation/Widgets/experince_column.dart';
import 'package:protofolio/Core/Widgets/title_and_sub.dart';
import 'package:protofolio/features/Experince/presentation/Widgets/experince_row.dart';

class ExperiencePage extends StatelessWidget {
  ExperiencePage({super.key});

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
                  TitleAndSub(
                        isMobile: isMobile,
                        isTablet: isTablet,
                        height: state.height,
                        width: state.width,
                        title: "Explore My",
                        subTitle: "Experience",
                      ),
                  SizedBox(height: isMobile || isTablet? state.height* 0.04: state.height*0.18),
                  isTablet || isMobile ?
                  ExperinceColumn( isMobile: isMobile , isTablet:isTablet , height: state.height , width: state.width)
                  : ExperinceRow(height: state.height , width: state.width)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
