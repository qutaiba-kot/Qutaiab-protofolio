class ExperinceResponsive {
  final bool isMobile;
  final bool isTablet;
  final double height;
  final double width;

  late double containerWidth;
  late double containerHeight;

  ExperinceResponsive({
    required this.isMobile,
    required this.isTablet,
    required this.height,
    required this.width,
  }) {
    containerWidth = isMobile
        ? width * 0.7
        : isTablet
        ? width * 0.55
        : width * 0.25;


    containerHeight = isMobile
        ? height *0.55
        : isTablet
        ? height * 0.55
        : height * 0.55;
  }
}
