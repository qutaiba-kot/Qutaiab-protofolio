import 'package:flutter/material.dart';
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
    return SingleChildScrollView(
      child: isMobile || isTablet
          ? ProjectColumn(
              isMobile: isMobile,
              isTablet: isTablet,
              height: height,
              width: width,
            )
          : ProjectRow(height: height, width: width),
    );
  }
}
