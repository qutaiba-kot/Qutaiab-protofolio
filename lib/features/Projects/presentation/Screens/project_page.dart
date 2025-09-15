import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Responsive%20helper/responsive_helper.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_cubit.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_state.dart';
import 'package:protofolio/Core/Widgets/next_page_button.dart';
import 'package:protofolio/features/Projects/presentation/Widgets/project_column.dart';
import 'package:protofolio/features/Projects/presentation/Widgets/project_row.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ScreenCubit, ScreenState>(
        builder: (context, state) {
          var isMobile = state.deviceType == DeviceTypes.mobile;
          var isTablet = state.deviceType == DeviceTypes.tablet;
          return Stack(
            children: [
              isMobile || isTablet
                  ? ProjectColumn(
                      isMobile: isMobile,
                      isTablet: isTablet,
                      height: state.height,
                      width: state.width,
                    )
                  : ProjectRow(
                      height: state.height,
                      width: state.width,
                    ),
              Positioned(
                child: NextPageButton(),
                bottom: state.height * 0.1,
                right: positionedWidth(
                  width: state.width,
                  isTablet: isTablet,
                  isMobile: isMobile,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
