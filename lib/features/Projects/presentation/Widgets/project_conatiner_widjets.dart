import 'package:flutter/material.dart';
import 'package:protofolio/Core/Sizer/main_sizer.dart';
import 'package:protofolio/Core/SupaBase/init_supabase.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/Projects/Responsive%20Helper/projects_responsive.dart';
import 'package:protofolio/features/Projects/presentation/Widgets/project_git_hub_link_button.dart';

class ProjectConatinerWidjets extends StatelessWidget {
  final MainSizer mainSizer;
  final int projectNumber;
  const ProjectConatinerWidjets({
    super.key,
    required this.mainSizer,
    required this.projectNumber,
  });

  @override
  Widget build(BuildContext context) {
    final sizes = ProjectsSizes(
      mainSizer: mainSizer
    );
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        border: Border.all(color: Colors.transparent, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      height: mainSizer.isMobile ||mainSizer. isTablet ? sizes.outerContainerHeight :mainSizer. height* 0.55,
      width:mainSizer. isMobile || mainSizer.isTablet ? sizes.outerContainerWidth : mainSizer.width* 0.2,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          spacing: 20,
          children: [
            SizedBox(
              height:mainSizer.isMobile ||mainSizer. isTablet ? sizes.innerContainerHeight : mainSizer.height* 0.35,
              width: mainSizer.isMobile || mainSizer.isTablet ?sizes.innerContainerWidth : mainSizer. width* 0.085,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.network(
                  fit: BoxFit.fill,
                  profile!.projectPics[projectNumber],
                  
                ),
              ),
            ),
            Text(
              profile!.projectNames[projectNumber],
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            ProjectGitHubLinkButton(
              projectNumber: projectNumber,
              mainSizer: mainSizer,
            ),
          ],
        ),
      ),
    );
  }
}
