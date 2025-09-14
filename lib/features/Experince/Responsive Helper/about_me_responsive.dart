class ExperienceSizes {
  final double containerTitle;
  final double iconSize;
  final double title;
  final double subTitle;

  ExperienceSizes({
    required bool isMobile,
    required double height,
    required double width,
  }) : iconSize = isMobile
           ? (height * width) / 2 * 0.00038
           : (height * width) / 2 * 0.0002,
       containerTitle = isMobile
           ? (height * width) / 2 * 0.00038
           : (height * width) / 2 * 0.00025,
       title = isMobile
           ? (height * width) / 2 * 0.00033
           : (height * width) / 2 * 0.00015,
       subTitle = isMobile
           ? (height * width) / 2 * 0.00028
           : (height * width) / 2 * 0.0001;
}
