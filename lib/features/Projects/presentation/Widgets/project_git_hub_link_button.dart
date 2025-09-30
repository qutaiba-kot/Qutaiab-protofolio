import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/Sizer/main_sizer.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/Projects/Responsive%20Helper/projects_responsive.dart';
import 'package:protofolio/features/Projects/logic/cubit/projects_cubit.dart';

class ProjectGitHubLinkButton extends StatelessWidget {
  final MainSizer mainSizer;
  final int projectNumber;

  const ProjectGitHubLinkButton({
    super.key,
    required this.mainSizer,
    required this.projectNumber,
  });

  @override
  Widget build(BuildContext context) {
    final sizes = ProjectsSizes(
      mainSizer: mainSizer
    );

    return SizedBox(
      height: sizes.buttonHeight,
      width: sizes.buttonWidth,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.primary),
        ),
        onPressed: () {
          context.read<ProjectsCubit>().launchURL(
            profile!.projectLinks[projectNumber],
          );
        },
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "GitHub",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
