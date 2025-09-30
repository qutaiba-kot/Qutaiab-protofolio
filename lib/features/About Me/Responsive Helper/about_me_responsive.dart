import 'package:protofolio/Core/Sizer/main_sizer.dart';

class AboutMeResponsive {
  final MainSizer mainSizer;

  late final double containerHeight;
  late final double containerWidth;
  late final double picWidth;
  late final double picHeight;
  late final double parahraphHeight;
  late final double parahraphWidth;

  AboutMeResponsive({
    required this.mainSizer
  }) {
    containerHeight = (mainSizer.isMobile || mainSizer.isTablet) ? mainSizer.height * 0.180 : mainSizer.height * 0.250;
    containerWidth = (mainSizer.isMobile || mainSizer.isTablet) ?mainSizer. width * 0.350 : mainSizer.width * 0.200;
    picHeight = (mainSizer.isMobile || mainSizer.isTablet) ?mainSizer. height * 0.3 : mainSizer.height * 0.45;
    picWidth = (mainSizer.isMobile || mainSizer.isTablet) ? mainSizer.width * 0.7 :mainSizer. width * 0.3;
    parahraphHeight = mainSizer.isMobile
        ? mainSizer.height * 0.20
        : mainSizer.isTablet
        ? mainSizer.height * 0.15
        : mainSizer.height * 0.20;
    parahraphWidth = mainSizer.isMobile
        ? mainSizer.width * 0.70
        : mainSizer.isTablet
        ? mainSizer.width * 0.70
        : mainSizer.width * 0.40;
  }
}
