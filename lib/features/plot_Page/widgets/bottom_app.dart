import 'package:flutter/material.dart';

class BottomApp extends StatelessWidget {
<<<<<<< HEAD
  final int _selectedIndex = 0;
=======
  int _selectedIndex = 0;
  final ScrollController _homeController = ScrollController();
>>>>>>> f49ed9fe3caf0b9ddeade8de70fa6203d53f16e7
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 105, child: BottomNavigationBar(
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
        onTap: (int index) {
          switch (index) {
            case 1:
             Navigator.of(context).pushNamed('/Entry');
            case 2:
              Navigator.of(context).pushNamed('/Character');
          }
        }
       ),
   );
  }
}