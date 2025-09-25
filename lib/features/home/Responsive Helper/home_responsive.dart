class HomeResponsive {
  final bool isMobile;
  final bool isTablet;
  final double height;
  final double width;

  late final double containerHeight;
  late final double containerWidth;
  late final double helloFontsize;
  late final double specializationFontsize;
  late final double nameFontsize;
  late final double buttonTextFontsize;
  late final double buttonHeight;
  late final double buttonWidth;
  late final double picRadius;

  HomeResponsive({
    required this.isMobile,
    required this.isTablet,
    required this.height,
    required this.width,
  }) {
    containerHeight = height * 0.40;
    containerWidth = isMobile || isTablet ? width * 0.80 : width * 0.30;
    helloFontsize = isMobile
        ? 20
        : isTablet
        ? 30
        : 30;
    nameFontsize = isMobile
        ? 20
        : isTablet
        ? 25
        : 50;
    specializationFontsize = isMobile
        ? 20
        : isTablet
        ? 20
        : 30;
    buttonTextFontsize = isMobile
        ? 12
        : isTablet
        ? 15
        : 16;
    buttonHeight = height * 0.1;
    buttonWidth = width * 0.4;
    picRadius = isMobile
            ? (height * width) * 0.0003
            : (height * width) * 0.00016;
  }
}
