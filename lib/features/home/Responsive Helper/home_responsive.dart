class HomeResponsive {
  final bool isMobile;
  final bool isTablet;
  final double height;
  final double width;

  late final double containerHeight;
  late final double containerWidth;
  late final double buttonHeight;
  late final double buttonWidth;
  late final double widthContainerTiele;

  HomeResponsive({
    required this.isMobile,
    required this.isTablet,
    required this.height,
    required this.width,
  }) {
    containerHeight = height * 0.40;
    containerWidth = isMobile
        ? width * 0.6
        : isTablet
        ? width * 0.6
        : width * 0.22;
    buttonHeight = containerHeight * 0.2;
    buttonWidth = isMobile || isTablet ? containerWidth*0.5 : containerWidth*1.5;
    widthContainerTiele = isMobile || isTablet ? width * 0.41 : width * 0.21 ;
  }
}
