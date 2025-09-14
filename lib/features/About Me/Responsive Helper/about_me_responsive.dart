class AboutMeResponsive {
  final bool isMobile;
  final bool isTablet;
  final double height;
  final double width;

  late final double containerHeight;
  late final double containerWidth;
  late final double size;
  late final double iconSize;
  late final double titleSize;
  late final double subTitleSize;
  late final double bodySize;

  AboutMeResponsive({
    required this.isMobile,
    required this.isTablet,
    required this.height,
    required this.width,
  }) {
    containerHeight = (isMobile || isTablet) ? height * 0.180 : height * 0.250;
    containerWidth = (isMobile || isTablet) ? width * 0.350 : width * 0.200;
    size = (containerHeight * containerWidth) / 140;

    iconSize = isMobile
        ? size * 0.15
        : isTablet
        ? size * 0.090
        : size * 0.050;

    titleSize = isMobile
        ? size * 0.10
        : isTablet
        ? size * 0.050
        : size * 0.030;

    subTitleSize = isMobile
        ? size * 0.070
        : isTablet
        ? size * 0.050
        : size * 0.030;

    bodySize = isMobile
        ? size * 0.080
        : isTablet
        ? size * 0.050
        : size * 0.030;
  }
}

class ParagraphSizes {
  final double containerHeight;
  final double containerWidth;

  ParagraphSizes({
    required bool isMobile,
    required bool isTablet,
    required double height,
    required double width,
  }) : containerHeight = isMobile
           ? height * 0.20
           : isTablet
           ? height * 0.15
           : height * 0.20,
       containerWidth = isMobile
           ? width * 0.70
           : isTablet
           ? width * 0.70
           : width * 0.40;
}

class PicSizes {
  final double height;
  final double width;

  PicSizes({
    required bool isMobile,
    required bool isTablet,
    required double screenHeight,
    required double screenWidth,
  }) : height = (isMobile || isTablet)
           ? screenHeight * 0.3
           : screenHeight * 0.45,
       width = (isMobile || isTablet) ? screenWidth * 0.7 : screenWidth * 0.3;
}
