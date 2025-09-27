class ContactMeResponsive {
  final bool isMobile;
  final bool isTablet;
  final double height;
  final double width;

  final double linksSpacing;
  final double copyrightsSpacing;
  final double copyrightTextSize;
  final double containerHeight;
  final double containerWidth;
  final double linksTextSize;
  final double topSpacing;

  ContactMeResponsive({
    required this.isMobile,
    required this.isTablet,
    required this.height,
    required this.width,
  }) : copyrightTextSize = isMobile
           ? 9
           : isTablet
           ? 13
           : 19,
       linksTextSize = isMobile
           ? 11.3
           : isTablet
           ? 17.8
           : 13.6,
       linksSpacing =
           height *
           (isMobile
               ? 0.03
               : isTablet
               ? 0.04
               : 0.05),
       copyrightsSpacing = isTablet || isMobile ? height * 0.25 : height * 0.35,
       topSpacing = height * (isMobile ?  0.3 : isTablet ? 0.4 : 0.25),

       containerHeight = isMobile
           ? height * 0.070
           : isTablet
           ? height * 0.090
           : height * 0.08,

       containerWidth = isMobile || isTablet ? width * 0.75 : width * 0.29;
}
