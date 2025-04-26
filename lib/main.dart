import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:uncharted/API/Keys/openai_api.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'uncharted_app.dart';

void main() {
  Gemini.init(apiKey: GEMINI_API);
  runApp(DevicePreview(builder: (context) => const UnchartedApp()));
}