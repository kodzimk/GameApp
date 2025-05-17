import 'package:device_preview/device_preview.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter/material.dart';
import 'uncharted_app.dart';

final String geminiApi = "AIzaSyBFId0llJBa6pdcZPOe8FI1DGCfC9hDAWs";

void main() {
  Gemini.init(apiKey: geminiApi);
  runApp(DevicePreview(isToolbarVisible: false, builder: (context) => const UnchartedApp()));
}