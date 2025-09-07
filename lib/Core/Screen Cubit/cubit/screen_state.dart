enum DeviceTypes { mobile, tablet, desktop }

class ScreenState {
  final double width;
  final double height;
  final DeviceTypes deviceType;

  ScreenState({required this.height,required this.width, required this.deviceType});
}
