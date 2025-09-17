class ContactMeResponsive {
  final bool isMobile;
  final bool isTablet;
  final double height;
  final double width;

  final double linksSpacing;
  final double copyrightsSpacing;
  final double CopyrightTextSize;
  final double containerHeight;
  final double containerWidth;
  final double linksTextSize;
  final double topSpacing;

  ContactMeResponsive({
    required this.isMobile,
    required this.isTablet,
    required this.height,
    required this.width,
  }) : CopyrightTextSize = isMobile
           ? (height * width) / 140 * 0.004
           : isTablet
           ? (height * width) / 140 * 0.002
           : (height * width) / 140 * 0.0015,
       linksTextSize = isMobile
           ? (height * width) / 140 * 0.0055
           : isTablet
           ? (height * width) / 140 * 0.003
           : (height * width) / 140 * 0.002,
       linksSpacing =
           height *
           (isMobile
               ? 0.03
               : isTablet
               ? 0.04
               : 0.05),
       copyrightsSpacing =
           height *0.35,
           topSpacing = height *
           (isMobile
               ? 0.3
               : isTablet
               ? 0.2
               : 0.25),

       containerHeight = isMobile
           ? height * 0.070
           : isTablet
           ? height * 0.090
           : height * 0.08,

       containerWidth = isMobile || isTablet ? width * 0.75 : width * 0.29;
}
