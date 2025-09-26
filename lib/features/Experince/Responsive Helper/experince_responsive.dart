class ExperinceResponsive {
  final bool isMobile;
  final bool isTablet;
  final double height;
  final double width;

  late final double picContainerWidth;
  late final double picContainerHeight;
  late final double textContainerHeight;
  late final double textContainerWidth;
  late final double cursolWidth;
  late final double cursolheight;
  late final double indectorContainerWidth;
  late final double indectorContainerHeight;
  late final double indectorWidth;
  late final double indectorHeight;
  late final double cardTextSizes;
  late final double skillInnerHeight;
  late final double skillInnerWidth;
  late final double skillOuterHeight;
  late final double skillOuterWidth;

  ExperinceResponsive({
    required this.isMobile,
    required this.isTablet,
    required this.height,
    required this.width,
  }) {
    picContainerWidth = isMobile
        ? width * 0.3
        : isTablet
        ? width * 0.2
        : width * 0.1;

    picContainerHeight = height * 0.15;

    cursolWidth = isMobile
        ? width
        : isTablet
        ? width * 0.8
        : width * 0.4;
    cursolheight = height * 0.3;

    cardTextSizes = isMobile ? 10 : 12.5;
    textContainerHeight = cursolheight * 0.6;
    textContainerWidth = cursolWidth * 0.5;
    skillOuterHeight = height * 0.26;
    skillOuterWidth = isMobile || isTablet ? width * 0.96 : width * 0.76;
    skillInnerHeight = skillOuterHeight * 0.7;
    skillInnerWidth = skillOuterWidth * 0.99;
    indectorContainerHeight = height * 0.01;
    indectorContainerWidth = isTablet ? width * 0.1 : isMobile ? width * 0.12 : width * 0.05;

    indectorHeight = indectorContainerHeight * 0.8;
    indectorWidth = indectorHeight;
  }
}
