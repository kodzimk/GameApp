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
               Container(
                margin: EdgeInsets.only(
                  top: 100,
                  left: 10,
                ),
                child:  SizedBox(width: 320,child:TextField(
                  decoration: defaultInputDecoration(),
                  onChanged: (value) {
                    quesiton = value;
                  },
                ),
              ),
               ),



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
                    Part.text(quesiton  + "from  uncharted 4 a theif end talk about him maximum 280 words"),
                       ]).then((value)
                         {
                         setState(() {
                           aboutCharacter = value?.output ?? 'NULL';
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



           SizedBox( 
           child: Container(
              margin: EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                  ),
                  child: Text(
                   aboutCharacter,
                    style: TextStyle(
                        fontFamily: 'Cinzel',
                        color: Colors.white,
                        fontSize: 11,
                      ),
                    ),
          ),
           ),


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
                      style: TextStyle(
                        fontFamily: 'Cinzel',
                        color: Colors.white
                  ),
                ),
              ),
            ),
          ),
       ),

    ]);
  }

  void SetQuestion()
  {
    if(quesiton.toUpperCase() == "NATHAN" || quesiton.toUpperCase() == "SAM" || quesiton.toUpperCase() == "ELENA" || quesiton.toUpperCase() == "VICTOR"||
      quesiton.toUpperCase() ==  "RAFE" || quesiton.toUpperCase() ==  "HECTOR" || quesiton.toUpperCase() ==  "DRAKE" || quesiton.toUpperCase() ==  "ALCAZAR" || 
      quesiton.toUpperCase() ==  "CASSIE" || quesiton.toUpperCase() ==  "EVELYN" || quesiton.toUpperCase() ==  "NADIN" || quesiton.toUpperCase() == "MORGAN" ||
      quesiton.toUpperCase() ==  "CASSANDRA"|| quesiton.toUpperCase() == "KAISAR")
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
        chatCharacter.toUpperCase() == "CASSIE" || chatCharacter.toUpperCase() == "EVELYN" || chatCharacter.toUpperCase() == "NADIN"|| chatCharacter.toUpperCase() =="MORGAN" ||
        chatCharacter.toUpperCase() == "CASSANDRA" || chatCharacter.toUpperCase() == "KAISAR")
        { 
          ignore = false;
        }
        else{
               ignore = true;
            }
      }
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


