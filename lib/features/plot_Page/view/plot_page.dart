import 'package:flutter/material.dart';
import 'package:uncharted/features/character_page/view/character_page.dart';
import 'package:uncharted/features/entry_page/view/view.dart';

class PlotPage extends StatefulWidget {
  const PlotPage({super.key});

  @override
  State<PlotPage> createState() => _PlotPageState();
}

class _PlotPageState extends State<PlotPage> {
  int _selectedIndex = 0;
  final ScrollController _homeController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color.fromARGB(255,125,108,0),
      bottomNavigationBar: SizedBox(height: 105, child: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 10.0,
        items: [
          BottomNavigationBarItem( 
            icon:  SingleChildScrollView(child:Center(widthFactor: 0.0,heightFactor: 1.65, child: Image(
              image: AssetImage('assets/images/playIcon.png'),
              width: 45.0,
              height: 45.0,    
             ),
            ),
            ),
             label: '',
             backgroundColor: Color.fromARGB(255,105,86,80),
          ),
          BottomNavigationBarItem(
             icon: SingleChildScrollView(child:Center(widthFactor: 1.0,heightFactor: 1.5, child: Image(
              image: AssetImage('assets/images/compassIcon.png'),
              width: 45.0,
              height: 45.0,    
             ),
            ),
          ),
            label: ''
          ),
          BottomNavigationBarItem(
             icon: Center(widthFactor: 1.0,heightFactor: 1.5, child: Image(
              image: AssetImage('assets/images/theifIcon.png'),
              width: 45.0,
              height: 45.0,    
             ),
            ),
            label: ''
          ),
        ],
        backgroundColor: Color.fromARGB(255,105,86,80),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) {
          switch (index) {
            case 1:
             Navigator.of(context).pushNamed('/Entry');
            case 2:
              Navigator.of(context).pushNamed('/Character');
          }
          setState(() {
            _selectedIndex = index;
          });
        }
       ),
      ),  
     );
  }
}