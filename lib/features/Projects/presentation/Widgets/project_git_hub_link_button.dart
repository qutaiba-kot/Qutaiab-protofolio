import 'package:flutter/material.dart';
import 'package:protofolio/features/Projects/Responsive%20Helper/projects_responsive.dart';

class ProjectGitHubLinkButton extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  final double height;
  final double width;
  const ProjectGitHubLinkButton({
    super.key,
    required this.isMobile,
    required this.isTablet,
    required this.height,
    required this.width,
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
        onPressed: () {},
        child: Text(
          "GitHub",
          style: TextStyle(fontSize: sizes.buttonText, color: Colors.black),
        ),
      ),
    );
  }
}
