import 'package:flutter_bloc/flutter_bloc.dart';
import 'screen_state.dart'; 

class ScreenCubit extends Cubit<ScreenState> {
  ScreenCubit() : super(ScreenState(width: 0, deviceType: DeviceTypes.desktop, height: 0));

  void updateWidth(double width , double height) {
    DeviceTypes type;
    if (width < 600) {
      type = DeviceTypes.mobile;
    } else if (width < 1200 && width >=600) {
      type = DeviceTypes.tablet;
    } else {
      type = DeviceTypes.desktop;
    }
    emit(ScreenState(width: width, deviceType: type , height: height));
  }
}
