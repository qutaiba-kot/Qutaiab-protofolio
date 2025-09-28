import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Widgets/title_and_sub.dart';
import 'package:protofolio/features/Projects/logic/cubit/projects_cubit.dart';
import 'package:protofolio/features/Projects/presentation/Widgets/project_column.dart';
import 'package:protofolio/features/Projects/presentation/Widgets/project_row.dart';

class ProjectPage extends StatelessWidget {
  final double height;
  final double width;
  final bool isMobile;
  final bool isTablet;
  const ProjectPage({
    super.key,
    required this.height,
    required this.width,
    required this.isMobile,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProjectsCubit(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TitleAndSub(
            isMobile: isMobile,
            isTablet: isTablet,
            height: height,
            width: width,
            title: "Browse My recent",
            subTitle: "Projects",
          ),
          SizedBox(height: isMobile ||isTablet ? height * 0.07 : height * 0.05),
            isMobile || isTablet
                ? ProjectColumn(
                    isMobile: isMobile,
                    isTablet: isTablet,
                    height: height,
                    width: width,
                  )
                : ProjectRow(height: height, width: width),
          ],
        ),
      ),
    );
  }
}
