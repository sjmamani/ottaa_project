import 'package:flutter/material.dart';
import 'package:ottaa_project/screens/language_screen.dart';
import 'package:ottaa_project/screens/voice_and_subtitles_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: Placeholder(),
        centerTitle: false,
        backgroundColor: Colors.grey[350],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 40,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SETTINGS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Divider(
                height: 10,
                color: Colors.grey[700],
              ),
              ListTile(
                leading: Icon(
                  Icons.photo_library,
                  color: Colors.orange,
                ),
                onTap: () {},
                title: Text('Pictograms'),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.try_sms_star,
                  color: Colors.orange,
                ),
                onTap: () {},
                title: Text('Prediction'),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.accessibility,
                  color: Colors.orange,
                ),
                onTap: () {},
                title: Text('Accesibility'),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.record_voice_over,
                  color: Colors.orange,
                ),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        const VoiceAndSubtitlesScreen(),
                  ),
                ),
                title: Text('Voice and subtitles'),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.language,
                  color: Colors.orange,
                ),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const LanguageScreen(),
                  ),
                ),
                title: Text('Language'),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
