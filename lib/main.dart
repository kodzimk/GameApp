import 'package:device_preview/device_preview.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter/material.dart';
import 'uncharted_app.dart';

const GEMINI_API = "AIzaSyBFId0llJBa6pdcZPOe8FI1DGCfC9hDAWs";

void main() {
  Gemini.init(apiKey: GEMINI_API);
  runApp(DevicePreview(isToolbarVisible: false, builder: (context) => const UnchartedApp()));
}