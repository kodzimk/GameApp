import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';


class CharacterPageWidget extends StatefulWidget {
  const CharacterPageWidget({super.key});

  @override
  State<CharacterPageWidget> createState() => _CharacterPageWidgetState();
}

class _CharacterPageWidgetState extends State<CharacterPageWidget> {

  String chatCharacter = '';
  bool ignore = true;
  String aboutCharacter = '';
  String quesiton = '';

  @override
  Widget build(BuildContext context) {
    
    return Column(children: [Row(crossAxisAlignment: CrossAxisAlignment.start, children: [ 
             // Input field
               Container(
                margin: EdgeInsets.only(
                  top: 100,
                  left: 10,
                ),
                child:  SizedBox(width: 320,child:TextField(
                  decoration: defaultInputDecoration(),
                  onChanged: (value) {
                    quesiton = value;
                    quesiton = quesiton.capitalize();
                  },
                ),
              ),
               ),


            // Input field send button
              Container(
                  margin: EdgeInsets.only(
                    top: 95,
                    left: 10,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white,
                        width: 4.0,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(26.0),
                  ),
                  child: ElevatedButton(
                    onPressed: ()
                     async {      
                    final gemini = Gemini.instance;
                    gemini.prompt(parts: [
                    Part.text(quesiton  + "from uncharted 4: A Theif End ,talk about him maximum 290 words"),
                       ]).then((value)
                         {
                         setState(() {
                           aboutCharacter = value?.output ?? '';
                           SetQuestion();
                           });
                         });       
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(40, 38),
                      elevation: 0,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size.zero,
                    ),
                    child: Text('->'),
                  ),
                ),
          ]),


         // Text abotu smth
           SizedBox( 
           child: Container(
              margin: EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                  ),
                  child: Text(
                   aboutCharacter,
                    style: Theme.of(context).textTheme.bodySmall,
                    ),
              ),
           ),


       // Start Chat Button
       Opacity(opacity: ignore ? 0.0 : 1.0,
            child: IgnorePointer( ignoring: ignore,
              child: Container( 
                  margin: EdgeInsets.only(
                    right: 160,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(      
                        color: Color.fromARGB(255,105,86,80),
                        width: 4.0,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(26.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                      '/Chat',
                      arguments: chatCharacter,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255,105,86,80),
                      fixedSize: const Size(200, 38),
                      elevation: 0,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size.zero,                      
                    ),
                    child: Text(
                      'Start chat',
                      style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ),
       ),

    ]);
  }
  

  void SetQuestion()
  {
    for(int i = 0;i < quesiton.length;i++)
    {
      if(quesiton[i] == ' ' || quesiton[i] == ',')
      {
        quesiton = quesiton.substring(0,i);
        break;
      }
    }

    if(quesiton.toUpperCase() == "NATHAN" || quesiton.toUpperCase() == "ROSS" || quesiton.toUpperCase() == "ADLER" || quesiton.toUpperCase() == "SAM" || 
      quesiton.toUpperCase() == "ELENA" || quesiton.toUpperCase() == "VICTOR"||  quesiton.toUpperCase() == "SULLIVAN" || quesiton.toUpperCase() == "FISHER" ||
      quesiton.toUpperCase() ==  "RAFE" || quesiton.toUpperCase() ==  "HECTOR" || quesiton.toUpperCase() ==  "DRAKE" || quesiton.toUpperCase() ==  "ALCAZAR" || 
      quesiton.toUpperCase() ==  "CASSIE" || quesiton.toUpperCase() ==  "EVELYN" || quesiton.toUpperCase() ==  "NADINE" || quesiton.toUpperCase() ==  "ROSS" || 
      quesiton.toUpperCase() == "MORGAN" || quesiton.toUpperCase() ==  "CASSANDRA"|| quesiton.toUpperCase() == "KAISAR")
      {
          ignore = false;
          chatCharacter = quesiton;
      }
      else
      {
      for(int i = 0;i < aboutCharacter.length;i++)
      {
        if(aboutCharacter[i] == ' ' || aboutCharacter[i] == ',')
          {
             chatCharacter = aboutCharacter.substring(0,i);
             break;
          }
      }

     if(chatCharacter.toUpperCase() == "NATHAN" || chatCharacter.toUpperCase() == "SAM" || chatCharacter.toUpperCase() == "ELENA" || chatCharacter.toUpperCase() == "VICTOR"||
        chatCharacter.toUpperCase() == "RAFE" || chatCharacter.toUpperCase() == "HECTOR" || chatCharacter.toUpperCase() == "DRAKE" || chatCharacter.toUpperCase() == "ALCAZAR" || 
        chatCharacter.toUpperCase() == "CASSIE" || chatCharacter.toUpperCase() == "EVELYN" || chatCharacter.toUpperCase() == "NADINE" || chatCharacter.toUpperCase() == "ROSS"|| 
        chatCharacter.toUpperCase() =="MORGAN" || chatCharacter.toUpperCase() == "CASSANDRA" || chatCharacter.toUpperCase() == "KAISAR")
        { 
          ignore = false;
        }
        else{
               ignore = true;
            }
      }
  }

}

extension StringExtensions on String { 
  String capitalize() { 
    return "${this[0].toUpperCase()}${this.substring(1)}"; 
  } 
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


