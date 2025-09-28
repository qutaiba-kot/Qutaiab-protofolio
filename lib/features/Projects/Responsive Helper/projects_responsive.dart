class ProjectsSizes {
  late final double outerContainerHeight;
  late final double outerContainerWidth;
  late final double innerContainerHeight;
  late final double innerContainerWidth;
  late final double buttonHeight;
  late final double buttonWidth;

  ProjectsSizes({
    required double height,
    required double width,
    required bool isMobile,
    required bool isTablet,
  }) {
    outerContainerHeight = isTablet ? height * 0.55 : height * 0.55;
    outerContainerWidth = width * 0.15;
    innerContainerHeight = outerContainerHeight * 0.6;
    innerContainerWidth = isTablet
        ? (height * 0.6) * 0.32
        : isMobile
        ? (height * 0.8) * 0.25
        : outerContainerWidth * 0.5;
    buttonHeight = innerContainerHeight * 0.1;
    buttonWidth = innerContainerWidth * 0.7;
  }
}
