import 'package:equatable/equatable.dart';

enum DeviceTypes { mobile, tablet, desktop }

class ScreenState extends Equatable {
  final double width;
  final double height;
  final DeviceTypes deviceType;

  ScreenState({
    required this.width,
    required this.height,
    required this.deviceType,
  });

  @override
  List<Object?> get props => [width, height, deviceType];

  ScreenState copyWith({
    double? width,
    double? height,
    DeviceTypes? deviceType,
  }) {
    return ScreenState(
      width: width ?? this.width,
      height: height ?? this.height,
      deviceType: deviceType ?? this.deviceType,
    );
  }
}
