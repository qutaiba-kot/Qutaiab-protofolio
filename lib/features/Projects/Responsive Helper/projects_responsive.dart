class ProjectsSizes {
  late final double outerContainerHeight;
  late final double outerContainerWidth;
  late final double innerContainerHeight;
  late final double innerContainerWidth;
  late final double projectName;
  late final double buttonHeight;
  late final double buttonWidth;

  ProjectsSizes({
    required double height,
    required double width,
    required bool isMobile,
    required bool isTablet,
  }) {
    outerContainerHeight = height * 0.6;
    outerContainerWidth = width * 0.18;
    projectName = isMobile
        ? 20
        : isTablet
        ? 20
        : 17;
    innerContainerHeight = isMobile
        ? outerContainerHeight * 0.65
        : outerContainerHeight * 0.6;
    innerContainerWidth = isTablet
        ? (height * 0.6) * 0.32
        : isMobile
        ? (height * 0.8) * 0.25
        : outerContainerWidth * 0.5;
    buttonHeight = innerContainerHeight * 0.1;
    buttonWidth = innerContainerWidth * 0.7;
  }
}
