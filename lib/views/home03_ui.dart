import 'dart:io' show Platform, exit;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_km_project/views/home04_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home03UI extends StatefulWidget {
  const Home03UI({super.key});

  @override
  State<Home03UI> createState() => _Home03UIState();
}

class _Home03UIState extends State<Home03UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'DTI App Hello!',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Kanit',
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.grey[400],
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.red[300],
            ),
            onPressed: () {
              if (Platform.isAndroid) {
                SystemNavigator.pop();
              } else if (Platform.isIOS) {
                exit(0);
              }
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home04UI(),
                  ),
                );
              },
              child: Text('Go to Home04',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Kanit',
                  )),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Southeast Asia University',
              ),
              accountEmail: Text('www.sau.ac.th'),
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLSTK7p1BRSrgeSJYZmdKz1GLCKeldMrTrWQ&s',
                ),
              ),
              otherAccountsPictures: [
                Image.asset(
                  'assets/images/pic01.png',
                ),
                Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blueAccent,
                )
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              subtitle: Text(
                'Go to Home Page...',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              trailing: Icon(
                Icons.numbers,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.heart_broken_sharp,
                color: Colors.pinkAccent,
              ),
              title: Text(
                'Favourite',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.golf_course,
                color: Colors.orangeAccent,
              ),
              title: Text(
                'Stuff',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.kayaking,
                color: Colors.orangeAccent,
              ),
              title: Text(
                'Stuff',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.kayaking,
                color: Colors.orangeAccent,
              ),
              title: Text(
                'Stuff',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.kayaking,
                color: Colors.orangeAccent,
              ),
              title: Text(
                'Stuff',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.kayaking,
                color: Colors.orangeAccent,
              ),
              title: Text(
                'Stuff',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
