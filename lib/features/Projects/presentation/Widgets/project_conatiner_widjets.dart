import 'package:flutter/material.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/Projects/Responsive%20Helper/projects_responsive.dart';
import 'package:protofolio/features/Projects/presentation/Widgets/project_git_hub_link_button.dart';

class ProjectConatinerWidjets extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  final double height;
  final double width;
  final int projectNumber;
  const ProjectConatinerWidjets({
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
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        border: Border.all(color: Colors.transparent, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      height: sizes.outerContainerHeight,
      width: sizes.outerContainerWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: sizes.innerContainerHeight,
            width: sizes.innerContainerWidth,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.network(
                profile!.projectPics[projectNumber],
                fit: BoxFit.fill,
              ),
            ),
          ),
          Flexible(
            child: Text(
              profile!.projectNames[projectNumber],
              style: TextStyle(
                fontSize: sizes.projectName,
                color: Colors.white,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          ProjectGitHubLinkButton(
            projectNumber: projectNumber,
            isMobile: isMobile,
            isTablet: isTablet,
            height: height,
            width: width,
          ),
        ],
      ),
    );
  }
}
