import 'package:protofolio/Core/Sizer/main_sizer.dart';

class ProjectsSizes {
  late final double outerContainerHeight;
  late final double outerContainerWidth;
  late final double innerContainerHeight;
  late final double innerContainerWidth;
  late final double buttonHeight;
  late final double buttonWidth;

  ProjectsSizes({
    required MainSizer mainSizer,
  }) {
    outerContainerHeight = mainSizer.isTablet ? mainSizer.height * 0.55 : mainSizer.height * 0.55;
    outerContainerWidth = mainSizer.width * 0.15;
    innerContainerHeight = outerContainerHeight * 0.6;
    innerContainerWidth = mainSizer.isTablet
        ? (mainSizer.height * 0.6) * 0.32
        : mainSizer.isMobile
        ? (mainSizer.height * 0.8) * 0.25
        : outerContainerWidth * 0.5;
    buttonHeight = innerContainerHeight * 0.1;
    buttonWidth = innerContainerWidth * 0.7;
  }
}
