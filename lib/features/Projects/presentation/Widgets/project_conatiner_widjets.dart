import 'package:flutter/material.dart';
import 'package:protofolio/Core/Theme/app_colors.dart';
import 'package:protofolio/features/Projects/Responsive%20Helper/projects_responsive.dart';
import 'package:protofolio/features/Projects/presentation/Widgets/project_git_hub_link_button.dart';

class ProjectConatinerWidjets extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  final double height ; 
  final double width ;
  const ProjectConatinerWidjets({
    super.key,
    required this.isMobile,
    required this.isTablet, required this.height, required this.width,
  });

  @override
  Widget build(BuildContext context) {
    final sizes = ProjectsSizes(isMobile: isMobile, isTablet: isTablet, height: height, width: width);
    return Container(
      decoration: BoxDecoration(
        color:AppColors.secondary,
        border: Border.all(color:Colors.transparent, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      height: sizes.outerContainerHeight,
      width: sizes.outerContainerWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            height: sizes.innerContainerHeight,
            width: sizes.innerContainerWidth,
          ),
          Text(
            "Project Name",
            style: TextStyle(fontSize: sizes.projectName , color: Colors.white),
          ),  
          ProjectGitHubLinkButton(isMobile: isMobile, isTablet: isTablet, height: height, width: width)        
        ],
      ),
    );
  }
}
