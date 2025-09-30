import 'package:protofolio/Core/Sizer/main_sizer.dart';

class ExperinceResponsive {
  final MainSizer mainSizer;

  late double containerWidth;
  late double containerHeight;

  ExperinceResponsive({
    required this.mainSizer
  }) {
    containerWidth = mainSizer.isMobile
        ? mainSizer.width * 0.7
        : mainSizer.isTablet
        ? mainSizer.width * 0.55
        :mainSizer. width * 0.25;


    containerHeight = mainSizer.isMobile
        ? mainSizer.height *0.55
        : mainSizer.isTablet
        ? mainSizer.height * 0.55
        : mainSizer.height * 0.55;
  }
}
