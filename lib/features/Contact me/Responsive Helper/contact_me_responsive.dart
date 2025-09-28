class ContactMeResponsive {
  final bool isMobile;
  final bool isTablet;
  final double height;
  final double width;

  final double containerHeight;
  final double containerWidth;
  final double copyrightContainerWidth;
  final double copyrightContainerHeight;

  ContactMeResponsive({
    required this.isMobile,
    required this.isTablet,
    required this.height,
    required this.width,
  }) : copyrightContainerHeight = height * 0.03,
       copyrightContainerWidth = isMobile || isTablet ? width * 0.72:  width * 0.3,
       containerHeight = isMobile
           ? height * 0.070
           : isTablet
           ? height * 0.090
           : height * 0.08,

       containerWidth = isMobile
           ? width * 0.75
           : isTablet
           ? width * 0.45
           : width * 0.29;
}
