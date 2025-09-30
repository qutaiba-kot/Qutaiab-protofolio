import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Sizer/main_sizer.dart';
import 'package:protofolio/Core/Widgets/title_and_sub.dart';
import 'package:protofolio/features/Projects/logic/cubit/projects_cubit.dart';
import 'package:protofolio/features/Projects/presentation/Widgets/project_column.dart';
import 'package:protofolio/features/Projects/presentation/Widgets/project_row.dart';

class ProjectPage extends StatelessWidget {
  final MainSizer mainSizer;
  const ProjectPage({
    super.key,
    required this.mainSizer
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProjectsCubit(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TitleAndSub(
            mainSizer: mainSizer,
            title: "Browse My recent",
            subTitle: "Projects",
          ),
          SizedBox(height: mainSizer.isMobile ||mainSizer.isTablet ? mainSizer.height * 0.07 : mainSizer.height * 0.08),
            mainSizer.isMobile || mainSizer.isTablet
                ? ProjectColumn(
                    mainSizer: mainSizer,
                  )
                : ProjectRow(mainSizer: mainSizer,),
          ],
        ),
      ),
    );
  }
}
