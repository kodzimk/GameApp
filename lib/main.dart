import 'package:device_preview/device_preview.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter/material.dart';
import 'uncharted_app.dart';

const GEMINI_API = "";

void main() {
  Gemini.init(apiKey: GEMINI_API);
  runApp(DevicePreview(builder: (context) => const UnchartedApp()));
}