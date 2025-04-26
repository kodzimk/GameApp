import 'package:flutter/material.dart';
import '../widgets/bottom_app.dart';
import '../widgets/chat_widget.dart';

class CharacterPage extends StatefulWidget {
  const CharacterPage({super.key});

  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,125,108,104),
      bottomNavigationBar:BottomApp(),
      body: CharacterPageWidget(),
    );
  }
}


