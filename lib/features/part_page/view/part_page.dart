import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

class PartPage extends StatefulWidget {
  const PartPage({super.key});

  @override
  State<PartPage> createState() => __PartPageState();
}

class __PartPageState extends State<PartPage> {
      
    String appBarText = '';
    String arcText = '';
    bool isTake =false;

     @override
  void didChangeDependencies() async{
    final args = ModalRoute.of(context)?.settings.arguments;
    if(args == null)
    {
      log("You must provide args");
      return;
    }

    if(args is! String)
    {
       log("Provide string args");
       return;
    }

    setState(()  {    
        appBarText = args;     
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255,105,86,80),
            title: Text(appBarText),
            titleTextStyle: Theme.of(context).textTheme.bodyLarge,
            centerTitle: true,
        ),
        backgroundColor: Color.fromARGB(255,125,108,104),
        body: Container(
          width: 360,
          margin: EdgeInsets.only(
            top: 30,
            left:20,
          ),
          child:  TextArc(),
          
        ),
        
    );
  }
  Widget TextArc() 
  {
    if(!isTake)
    {
            final gemini = Gemini.instance;
              gemini.prompt(parts: [
             Part.text("Talk about the arc named" + appBarText  + "from uncharted 4: A Theif End him maximum 300 words"),
             ]).then((value)
              {
                 setState(() {               
                     arcText =  value?.output ?? 'asdasda';      
                     isTake = true;
                 });
              });
    }

              return SingleChildScrollView(child:  Text(
              arcText,
              style:  TextStyle(
              fontFamily: 'Cinzel',
              fontSize: 16,
              color: Colors.white,
         ),
        )
      );
  }
}