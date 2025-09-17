import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_cubit.dart';
import 'package:protofolio/Core/Screen%20Cubit/cubit/screen_state.dart';
import 'package:protofolio/features/Projects/presentation/Widgets/project_column.dart';
import 'package:protofolio/features/Projects/presentation/Widgets/project_row.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScreenCubit, ScreenState>(
        builder: (context, state) {
          var isMobile = state.deviceType == DeviceTypes.mobile;
          var isTablet = state.deviceType == DeviceTypes.tablet;
          return SingleChildScrollView(
            child: isMobile || isTablet
                ? ProjectColumn(
                    isMobile: isMobile,
                    isTablet: isTablet,
                    height: state.height,
                    width: state.width,
                  )
                : ProjectRow(height: state.height, width: state.width),
          );
        },
      );
  }
}
