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
