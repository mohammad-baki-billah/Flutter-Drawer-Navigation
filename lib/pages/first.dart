// ignore_for_file: unused_import, prefer_const_constructors

import 'package:drawer_navigation/pages/home_page.dart';
import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 100, 167, 255),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[200],
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 48,
                color: Colors.white,
              ),
            ),
            //Home page
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                //pop the drawer
                Navigator.pop(context);
                //push the home page
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                //pop the deawer
                Navigator.pop(context);
                //push the settings page
                Navigator.pushNamed(context, '/settingspage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
