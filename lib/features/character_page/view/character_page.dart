import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:uncharted/API/service_model.dart';
import '../widgets/bottom_app.dart';

class CharacterPage extends StatefulWidget {
  const CharacterPage({super.key});

  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {
  String aboutCharacter = '                                                                                                                                   ';
  String quesiton = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,125,108,104),
      bottomNavigationBar:BottomApp(),
      body:Column(children: [ Container(
                  margin: EdgeInsets.only(
                    left: 350.0,
                    top: 50.0
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255,105,86,80),
                        width: 6.0,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(36.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () async { log(quesiton); aboutCharacter = await ApiService.sendMessage(message: quesiton);},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255,105,86,80),
                      fixedSize: const Size(150, 40),
                      elevation: 0,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size.zero,
                    ),
                    child: Text(
                      'Search',
                      style: TextStyle(fontFamily: 'Cinzel',color: Colors.white),
                      ),
                  ),
                ), Container(margin:  EdgeInsets.only(
                    bottom: 10,
                    right: 80.0,
                    left: 20.0,
                  ),child: TextField(onChanged: (value) => quesiton = value,
                    decoration:  defaultInputDecoration(),),
                  
    ),Container(margin: EdgeInsets.only(
                    right: 0.0,
                    top: 20.0
                  ),child:  Text(aboutCharacter,style: TextStyle(
      fontFamily: 'Cinzel',
      fontSize: 15,
      color: Colors.white,
      ),
      ),), Container(
                  margin: EdgeInsets.only(
                    right: 200.0,
                    top: 500.0
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255,105,86,80),
                        width: 6.0,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(36.0),
                  ),
                  child: ElevatedButton(
                    onPressed: (){  Navigator.of(context).pushNamed('/Chat');},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255,105,86,80),
                      fixedSize: const Size(150, 40),
                      elevation: 0,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size.zero,
                    ),
                    child: Text(
                      'Start Chat',
                      style: TextStyle(fontFamily: 'Cinzel',color: Colors.white),
                      ),
                  ),
                ),
          ]),
    );
  }
  InputDecoration defaultInputDecoration({
  String hintText = 'Write character name',
  TextStyle hintStyle = const TextStyle(color: Colors.grey),
  Color? fillColor,
}) =>
    InputDecoration(
      isDense: true,
      hintText: hintText,
      hintStyle: hintStyle,
      filled: true,
      fillColor: fillColor ?? Colors.grey[100],
      contentPadding: const EdgeInsets.only(
        left: 18,
        top: 10,
        bottom: 10,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(
          width: 0,
          style: BorderStyle.none,
        ),
      ),
    );
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(body: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: Icon(
              Icons.send,
              color: Colors.white,
            ),
      )
    );
  }
}