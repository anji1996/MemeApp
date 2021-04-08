import 'package:flutter/material.dart';
import 'dashboard.dart';



class AboutusPage extends StatelessWidget {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final caption = 'CREATE MEME';
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange[400], title: Text(caption)),

      body: Center (

         child: Image.asset('images/logo.png', height: 200.0),
         

      ),
      


      // sideNavBar start
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstPage()),
                  );
                }),
            ListTile(
                title: Text('SETTINGS'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => SettingPage()),
                //   );
                // }
                )
                ,
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
    // sideNavBar end

    );
  }
}
