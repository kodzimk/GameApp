import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'uncharted_app.dart';

void main() {
  runApp(DevicePreview(isToolbarVisible: false, builder: (context) => const UnchartedApp()));
}