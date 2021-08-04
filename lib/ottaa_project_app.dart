import 'package:flutter/material.dart';
import 'package:ottaa_project/screens/settings_screen.dart';

class OttaaProjectApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ottaa Project',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: Colors.orange,
      ),
      home: SettingsScreen(),
    );
  }
}
