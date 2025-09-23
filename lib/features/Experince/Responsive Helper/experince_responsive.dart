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
  late final double indectorWidth;
  late final double indectorHeight;
  late final double textSizes;

  ExperinceResponsive({
    required this.isMobile,
    required this.isTablet,
    required this.height,
    required this.width,
  }) {
    picContainerWidth = isMobile
        ? width * 0.4
        : isTablet
        ? width * 0.3
        : width * 0.1;

    picContainerHeight = isMobile
        ? width * 0.4
        : isTablet
        ? width * 0.3
        : width * 0.1;

    indectorHeight = isMobile
        ? width * 0.009
        : isTablet
        ? width * 0.009
        : width * 0.005;

    indectorWidth = isMobile
        ? width * 0.009
        : isTablet
        ? width * 0.009
        : width * 0.005;

    cursolWidth = isMobile
        ? width
        : isTablet
        ? width * 0.8
        : width * 0.4;
        cursolheight = height * 0.3;

    textSizes = isMobile
        ? (picContainerHeight * picContainerWidth) * 0.0004
        : isTablet
        ? (picContainerHeight * picContainerWidth) * 0.0002
        : (picContainerHeight * picContainerWidth) * 0.0004;
        textContainerHeight  =  cursolheight *0.6 ;
        textContainerWidth = cursolWidth *0.4 ;
  }
}
