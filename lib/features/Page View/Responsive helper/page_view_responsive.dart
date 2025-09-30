import 'package:protofolio/Core/Sizer/main_sizer.dart';

class PageViewResponsive {
  final double positionedWidth;
  final double statusBar;
  final MainSizer mainSizer;
  PageViewResponsive({int? pageIndex, required this.mainSizer})
    : positionedWidth = mainSizer.isTablet
          ? mainSizer.width * 0.050
          : mainSizer.isMobile
          ? mainSizer.width * 0.020
          : mainSizer.width * 0.06,
      statusBar = pageIndex == 0
          ? mainSizer.height * 0.12
          : pageIndex == 1
          ? mainSizer.height * 0.24
          : pageIndex == 2
          ? mainSizer.height * 0.36
          : pageIndex == 3
          ? mainSizer.height * 0.48
          : mainSizer.height * 0.7;
}
