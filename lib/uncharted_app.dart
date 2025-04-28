import 'package:uncharted/features/character_page/view/character_page.dart';
import 'package:uncharted/features/chat_page/view/chat_page.dart';
import 'package:uncharted/features/entry_page/entry_page.dart';
import 'package:uncharted/features/plot_page/plot_page.dart';
import 'package:uncharted/features/part_page/part_page.dart';
import 'package:flutter/material.dart';
import 'theme/theme.dart';

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
      theme: darkTheme,
      routes: {
        '/Entry': (context) => EntryPage(),
        '/Plot': (context) => PlotPage(),
        '/Character': (context) => CharacterPage(),
        '/Chat': (context) => ChatPage(),
        '/Part' : (context) => PartPage(),
      },
      initialRoute: '/Entry',
    );
  }
}