import 'package:flutter/material.dart';
import 'package:nytbeststories/enum/device_type.dart';

class DeviceInfo {
  final Orientation? orientation;
  final TheDeviceType? deviceType;
  final double? screenWidth;
  final double? screenHeight;
  final double? localWidth;
  final double? localHeight;

  DeviceInfo(
      {this.orientation,
      this.deviceType,
      this.screenWidth,
      this.screenHeight,
      this.localWidth,
      this.localHeight});
}