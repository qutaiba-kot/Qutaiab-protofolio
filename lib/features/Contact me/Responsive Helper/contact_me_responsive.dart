import 'package:protofolio/Core/Sizer/main_sizer.dart';

class ContactMeResponsive {
  final MainSizer mainSizer;

  final double containerHeight;
  final double containerWidth;
  final double copyrightContainerWidth;
  final double copyrightContainerHeight;

  ContactMeResponsive({
    required this.mainSizer
  }) : copyrightContainerHeight = mainSizer.height * 0.03,
       copyrightContainerWidth = mainSizer.isMobile || mainSizer.isTablet ?mainSizer. width * 0.72:  mainSizer.width * 0.3,
       containerHeight =mainSizer. isMobile
           ? mainSizer.height * 0.070
           : mainSizer.isTablet
           ? mainSizer.height * 0.090
           : mainSizer.height * 0.08,

       containerWidth =mainSizer. isMobile
           ?mainSizer. width * 0.75
           :mainSizer. isTablet
           ?mainSizer. width * 0.45
           : mainSizer.width * 0.29;
}
