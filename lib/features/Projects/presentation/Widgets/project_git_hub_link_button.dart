import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/Projects/Responsive%20Helper/projects_responsive.dart';
import 'package:protofolio/features/Projects/logic/cubit/projects_cubit.dart';

class ProjectGitHubLinkButton extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  final double height;
  final double width;
  final int projectNumber;

  const ProjectGitHubLinkButton({
    super.key,
    required this.isMobile,
    required this.isTablet,
    required this.height,
    required this.width,
    required this.projectNumber,
  });

  @override
  Widget build(BuildContext context) {
    final sizes = ProjectsSizes(
      isMobile: isMobile,
      isTablet: isTablet,
      height: height,
      width: width,
    );

    return SizedBox(
      height: sizes.buttonHeight,
      width: sizes.buttonWidth,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.primary),
        ),
        onPressed: () {
          context.read<ProjectsCubit>().launchURL(profile!.projectLinks[projectNumber]);
        },
        child: const Text(
          "GitHub",
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
    );
  }
}
