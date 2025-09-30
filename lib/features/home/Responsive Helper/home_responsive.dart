import 'package:protofolio/Core/Sizer/main_sizer.dart';

class HomeResponsive {
  final MainSizer mainSizer;

  late final double containerHeight;
  late final double containerWidth;
  late final double buttonHeight;
  late final double buttonWidth;
  late final double widthContainerTitle;

  HomeResponsive({
    required this.mainSizer
  }) {
    containerHeight = mainSizer.height * 0.40;
    containerWidth = mainSizer.isMobile
        ? mainSizer.width * 0.6
        : mainSizer.isTablet
        ? mainSizer.width * 0.6
        : mainSizer.width * 0.22;
    buttonHeight = containerHeight * 0.1;
    buttonWidth =containerWidth*0.35;
    widthContainerTitle = mainSizer.isMobile || mainSizer.isTablet ? mainSizer.width * 0.41 : mainSizer.width * 0.21 ;
  }
}
