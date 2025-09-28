class AboutMeResponsive {
  final bool isMobile;
  final bool isTablet;
  final double height;
  final double width;

  late final double containerHeight;
  late final double containerWidth;
  late final double picWidth;
  late final double picHeight;
  late final double parahraphHeight;
  late final double parahraphWidth;

  AboutMeResponsive({
    required this.isMobile,
    required this.isTablet,
    required this.height,
    required this.width,
  }) {
    containerHeight = (isMobile || isTablet) ? height * 0.180 : height * 0.250;
    containerWidth = (isMobile || isTablet) ? width * 0.350 : width * 0.200;
    picHeight = (isMobile || isTablet) ? height * 0.3 : height * 0.45;
    picWidth = (isMobile || isTablet) ? width * 0.7 : width * 0.3;
    parahraphHeight = isMobile
        ? height * 0.20
        : isTablet
        ? height * 0.15
        : height * 0.20;
    parahraphWidth = isMobile
        ? width * 0.70
        : isTablet
        ? width * 0.70
        : width * 0.40;
  }
}
