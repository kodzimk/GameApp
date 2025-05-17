import 'package:flutter/material.dart';

class BottomApp extends StatelessWidget {
  const BottomApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 130, child: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 10.0,
        items: [
          BottomNavigationBarItem(          
              icon:  SingleChildScrollView(child:Center( widthFactor: 0.0,heightFactor: 1.55, child: Image(
              image: AssetImage('assets/images/playIcon.png'),
              width: 45.0,
              height: 40.0,    
              color:  Color.fromARGB(150, 0, 0, 0),
             ),
            ),
            ),
             label: '',
          ),
          BottomNavigationBarItem(
             icon: SingleChildScrollView(child:Center(widthFactor: 1.0,heightFactor: 1.36, child: Image(
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
              height: 40.0, 
               color:  Color.fromARGB(150, 0, 0, 0),   
             ),
            ),
            label: ''
          ),
        ],
        backgroundColor: Color.fromARGB(255,105,86,80),
        onTap: (int index) {
                 switch (index) {
            case 0:
             Navigator.of(context).pushNamed('/Plot');
            case 2:
              Navigator.of(context).pushNamed('/Character');
          }
        }
       ),
   );
  }
}