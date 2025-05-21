import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';


class CharacterPageWidget extends StatefulWidget {
  const CharacterPageWidget({super.key});

  @override
  State<CharacterPageWidget> createState() => _CharacterPageWidgetState();
}

class _CharacterPageWidgetState extends State<CharacterPageWidget> {

  String chatCharacter = '';
  String aboutCharacter = '';
  String question = '';
  bool ignore = true;
  final List<String> characters = ["NATHAN","GUSTAVO","ROSS", "ADLER","SAM","JAMESON","ELENA","VICTOR","SULLIVAN","FISHER","VARGAS","SHORELINE",
  "RAFE",  "HECTOR","DRAKE", "ALCAZAR" ,"FRANCIS","CASSIE", "EVELYN","NADINE","ROSS","CHRISTOPHER","MORGAN","CASSANDRA","KAISAR","RICHARD","THOMAS","TEW"];

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
                    question = value.toUpperCase();
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
                      Gemini.instance.prompt(parts: [
                      Part.text("$question from uncharted 4: A Theif End ,talk about him maximum 280 words"),
                       ]).then((value)
                         {
                          setState(() {
                            aboutCharacter = value?.output ?? '';
                            setQuestion();
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

         // Text about smth
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
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,               
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
  

  void setQuestion()
  {
    int index = question.indexOf(' ');
    if(index != -1)
    {
      question = question.substring(0, question.indexOf(' ')).toUpperCase();
    }

    if(characters.contains(question))
    {
        ignore = false;
        chatCharacter = question;
    }
    else
    {
        chatCharacter = aboutCharacter.substring(0, aboutCharacter.indexOf(' ')).toUpperCase();
        ignore = !characters.contains(chatCharacter);
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


