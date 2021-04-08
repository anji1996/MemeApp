import 'package:MemeMaker/aboutUs.dart';
import 'package:flutter/material.dart';
// import 'setting.dart';
import 'nav.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool _switch = false;
  ThemeData _dark = ThemeData(brightness: Brightness.dark);
  ThemeData _light = ThemeData(brightness: Brightness.light);
   final caption = 'CREATE MEME';
    
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme: _switch ? _dark : _light,
    home: Scaffold(
    appBar: AppBar(backgroundColor: Colors.orange[400], title: Text(caption)),

    body: Nav(),

     drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              // child: Text('Welcome'),

              child: Image.asset('images/logo.png', height: 250.0),
              decoration: BoxDecoration(
                color: Colors.orange[200],
              ),
            ),
            ListTile(
              title: Text('HOME'),
              leading: Icon(
                Icons.home,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('SETTINGS'),
              // leading: Icon(
              //   Icons.settings,
              //   color: Colors.black,
              // ),
              leading:Switch(
                value: _switch,
                onChanged: (_newvalue) {
                  setState(() {
                    _switch = _newvalue;
                  });
                }),
            ),
            ListTile(
              title: Text('GRIDS'),
              leading: Icon(
                Icons.grid_on_sharp,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('TEMPLATES'),
              leading: Icon(
                Icons.ten_mp,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('GIF MEMES'),
              leading: Icon(
                Icons.gif,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('RATE APP'),
              leading: Icon(
                Icons.rate_review,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('SHARE APP'),
              leading: Icon(
                Icons.share,
                color: Colors.black,
              ),
              // onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => SettingPage()),
              //     );
              //   }),
            ),
            ListTile(
                title: Text('ABOUT US'),
                leading: Icon(
                  Icons.details,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutusPage()),
                  );
                }),
            
          ],
        ),
      ),
 
      ),
    );
  }
}