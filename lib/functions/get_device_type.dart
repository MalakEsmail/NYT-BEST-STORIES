import 'package:flutter/material.dart';
import 'package:nytbeststories/enum/device_type.dart';

TheDeviceType gteDeviceType(MediaQueryData mediaQueryData) {
  Orientation orientation = mediaQueryData.orientation;
  double width = 0;
  if (orientation == Orientation.landscape) {
    width = mediaQueryData.size.height;
  } else {
    width = mediaQueryData.size.width;
  }
  if (width >= 950) {
    return TheDeviceType.Desctop;
  }
  if (width >= 600) {
    return TheDeviceType.Tablet;
  }
  return TheDeviceType.Mobile;
}