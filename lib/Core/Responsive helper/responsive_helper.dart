double positionedWidth({
  required double width,
  required bool isTablet,
  required bool isMobile,
}) {
  if (isTablet) {
    return width * 0.050;
  } else if (isMobile) {
    return width * 0.020;
  } else {
    return width * 0.060;
  }
}

class RowSelectionPageResponsive {
  final double fontSize;
  RowSelectionPageResponsive({
    required double width,
    required double height,
    required bool isMobile,
    required bool isTablet,
  }) : fontSize =  isMobile
        ? (height * width) / 2 * 0.00009
        : isTablet
        ? (height * width) / 2 * 0.00005
        : (height * width) / 2 * 0.00003;
}
