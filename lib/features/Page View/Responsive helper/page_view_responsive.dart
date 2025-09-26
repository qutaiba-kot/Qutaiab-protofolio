class PageViewResponsive {
  final double fontSize;
  final double positionedWidth;
  final double statusBar;
  PageViewResponsive({
    int? pageIndex,
    required double width,
    required double height,
    required bool isMobile,
    required bool isTablet,
  }) : fontSize =  20,
       positionedWidth = isTablet
           ? width * 0.050
           : isMobile
           ? width * 0.020
           : width * 0.06,
       statusBar = pageIndex == 0
           ? height * 0.12
           : pageIndex == 1
           ? height * 0.24
           : pageIndex == 2
           ? height * 0.36
           : pageIndex == 3
           ? height * 0.48
           : height * 0.7;
}
