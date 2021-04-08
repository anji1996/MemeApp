import 'package:flutter/material.dart';
import 'image.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _currentIndex = 0;
  final tabs=[
    Center(child:Text('')), 
    Center(child:LandingScreen()),
    Center(child:Text('')),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],

      // BottomNavBAr start
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.orange[400],
        
                items: const <BottomNavigationBarItem>[

                  BottomNavigationBarItem(
                    icon: Icon(Icons.undo),
                    title: Text('Undo'),
                   
                  ),
                  
                  BottomNavigationBarItem(
                    icon: Icon(Icons.photo),
                    title: Text('Image'),
                  ),

                  BottomNavigationBarItem(
                    icon: Icon(Icons.redo),
                    title: Text('Redo'),
                  ),
                  
                ],
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            // BottomNavBAr end

            );
          }
        }
        
      
