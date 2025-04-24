import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:uncharted/features/entry_page/entry_page.dart';

void main() {
  runApp(DevicePreview(builder: (context) => UnchartedApp()));
}

class UnchartedApp extends StatefulWidget {
  const UnchartedApp({super.key});

  @override
  State<UnchartedApp> createState() => _UnchartedAppState();
}

class _UnchartedAppState extends State<UnchartedApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uncharted',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 41, 39, 39),
        textTheme: TextTheme(
            bodyMedium: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
        ),
      ),
      routes: {
        '/': (context) => EntryPage(),
        '/second': (context) => SecondPage(),
      },
    );
  }
}


