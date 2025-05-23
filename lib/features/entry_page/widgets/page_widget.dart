import 'package:flutter/material.dart';
import '../widgets/bottom_app.dart';

class EntryPageMainWidget extends StatefulWidget {
  const EntryPageMainWidget({super.key});

  @override
  State<EntryPageMainWidget> createState() => _EntryPageMainWidgetState();
}

class _EntryPageMainWidgetState extends State<EntryPageMainWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 125, 108, 104),
        leading: IgnorePointer(ignoring: true),
        centerTitle: true,
        title: Container(
          margin: EdgeInsets.only(right: 10),
          child: Text(
            "Welcome to Theif world",
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Cinzel',
              fontSize: 20,
            ),
          ),
        ),
      ),

      //Bottom APP
      bottomNavigationBar: BottomApp(),

      // Body (Text,Images)
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Background5.png"),
                scale: 1.2,
                fit: BoxFit.cover,
              ),
            ),
          ),
  
          Container(
            margin: EdgeInsets.only(top: 35, left: 95),
            child: Text(
              "Treasure Haunter",
              style: TextStyle(
                fontFamily: 'Allura',
                fontSize: 33,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            width: 365,
            margin: EdgeInsets.only(top: 95, left: 20),
            child: Text(
              "Uncharted 4: A Thief's End is an adventure game,which follows the story of "
              "Nathan Drake, the series' protagonist, as he comes out of retirement from treasure hunting.The story kicks off when Nathan’s long-lost brother,"
              " Sam, who was thought to be dead, reappears and convinces him to embark on a dangerous journey to find the legendary pirate Henry Avery's treasure. "
              "Throughout the game, Nathan is pulled back into the world of high-stakes exploration, betrayal, and danger, "
              "facing not only enemies but his own inner conflict about leaving his peaceful life behind.Whoever read this,PLAY UNCHARTED 4.If you cant, you able to experince it by yourself.This app has quests and even AI expert of TREASURE HAUNTING.",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Cinzel',
                fontSize: 13,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 430, left: 14),
            child: Text(
              'Creaters',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 458, left: 14),
            child: Text(
              'Naughty Dog',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 477, left: 14),
            child: Text(
              'Emily Rose',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
