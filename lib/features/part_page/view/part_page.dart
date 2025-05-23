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
      arcText = args.toString().substring(
        args.toString().indexOf(',') + 1,
        args.toString().length - 1,
      );
      appBarText = args.toString().substring(1, args.toString().indexOf(','));
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 105, 86, 80),
        title: Text(appBarText),
        titleTextStyle: Theme.of(context).textTheme.bodyLarge,
        centerTitle: true,
      ),
      
      // Main Text
      backgroundColor: Color.fromARGB(255, 125, 108, 104),
      body: Container(
        width: 360,
        margin: EdgeInsets.only(top: 30, left: 20),
        child: SingleChildScrollView(
          child: Text(
            arcText,
            style: TextStyle(
              fontFamily: 'Cinzel',
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
