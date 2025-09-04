enum DeviceTypes { mobile, tablet, desktop }

class ScreenState {
  final double width;
  final DeviceTypes deviceType;

  ScreenState({required this.width, required this.deviceType});
}
