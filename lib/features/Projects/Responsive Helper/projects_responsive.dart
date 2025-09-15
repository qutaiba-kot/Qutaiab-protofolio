class ProjectsSizes {
  final double outerContainerHeight;
  final double outerContainerWidth;
  final double innerContainerHeight;
  final double innerContainerWidth;
  final double projectName;
  final double buttonText;
  final double buttonHeight;
  final double buttonWidth;

  ProjectsSizes._({
    required this.outerContainerHeight,
    required this.outerContainerWidth,
    required this.innerContainerHeight,
    required this.innerContainerWidth,
    required this.projectName,
    required this.buttonText,
    required this.buttonHeight,
    required this.buttonWidth,
  });

  factory ProjectsSizes({
    required bool isMobile,
    required bool isTablet,
    required double height,
    required double width,
  }) {
    final outerHeight = isMobile
        ? (height * width) / 2 * 0.003
        : isTablet
        ? (height * width) / 2 * 0.0015
        : (height * width) / 2 * 0.00075;

    final outerWidth = isMobile
        ? (height * width) / 2 * 0.0015
        : isTablet
        ? (height * width) / 2 * 0.0009
        : (height * width) / 2 * 0.0004;

    final projectName = isMobile
        ? (height * width) / 2 * 0.00009
        : isTablet
        ? (height * width) / 2 * 0.00006
        : (height * width) / 2 * 0.00003;

    final buttonText = isMobile
        ? (height * width) / 2 * 0.00007
        : isTablet
        ? (height * width) / 2 * 0.00004
        : (height * width) / 2 * 0.00002;

    final innerHeight = outerHeight * 0.65;
    final innerWidth = outerWidth * 0.7;

    final buttonHeight = innerHeight * 0.1;
    final buttonWidth = innerWidth * 0.5;

    return ProjectsSizes._(
      outerContainerHeight: outerHeight,
      outerContainerWidth: outerWidth,
      innerContainerHeight: innerHeight,
      innerContainerWidth: innerWidth,
      projectName: projectName,
      buttonText: buttonText,
      buttonHeight: buttonHeight,
      buttonWidth: buttonWidth,
    );
  }
}
