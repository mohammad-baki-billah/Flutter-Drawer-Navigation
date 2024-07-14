// ignore_for_file: prefer_const_constructors

import 'package:drawer_navigation/pages/first.dart';
import 'package:drawer_navigation/pages/home_page.dart';
import 'package:drawer_navigation/pages/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: First(),
      routes: {
        'first': (context) => First(),
        '/homepage': (context) => HomePage(),
        '/settingspage': (context) => SettingsPage(),
      },
    );
  }
}
