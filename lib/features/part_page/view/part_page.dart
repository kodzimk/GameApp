import 'package:flutter/material.dart';

class PartPage extends StatefulWidget {
  const PartPage({super.key});
  @override
  State<PartPage> createState() => __PartPageState();
}

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}

class __PartPageState extends State<PartPage> {
    String appBarText = '';
    String arcText = '';

    @override
    void didChangeDependencies() {
      final args = ModalRoute.of(context)!.settings.arguments;
      setState(() {
          appBarText = args.toString();
          for(int i = 0;i < appBarText.length;i++)
          {
              if(appBarText[i] == ',')
              {
                  arcText = appBarText.substring(i + 1,appBarText.length - 1);
                  appBarText = appBarText.substring(1,i);
              }
           }
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
          child:  textArc(),
        ),     
    );
  }
  
  Widget textArc() 
  {
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