import 'package:flutter/material.dart';
import 'package:nytbeststories/functions/get_device_type.dart';
import 'package:nytbeststories/models/device_info.dart';

class InfoWidget extends StatelessWidget {
  final Widget Function(BuildContext context, DeviceInfo deviceInfo) builder;

  const InfoWidget(Key? key, this.builder) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      var mediaQueryData = MediaQuery.of(context);
      var deviceInfo = DeviceInfo(
          orientation: mediaQueryData.orientation,
          deviceType: gteDeviceType(mediaQueryData),
          screenWidth: mediaQueryData.size.width,
          screenHeight: mediaQueryData.size.height,
          localHeight: constrains.maxHeight,
          localWidth: constrains.maxWidth);
      return builder(context, deviceInfo);
    });
  }
}