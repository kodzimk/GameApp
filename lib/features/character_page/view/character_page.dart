import 'package:flutter/material.dart';
import 'package:uncharted/features/entry_page/view/view.dart';
import 'package:uncharted/features/plot_Page/view/plot_page.dart';

class CharacterPage extends StatefulWidget {
  const CharacterPage({super.key});

  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {
  int _selectedIndex = 0;
  final ScrollController _homeController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,125,0,0),
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
            case 0:
             Navigator.of(context).pushNamed('/Plot');
            case 1:
              Navigator.of(context).pushNamed('/Entry');
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