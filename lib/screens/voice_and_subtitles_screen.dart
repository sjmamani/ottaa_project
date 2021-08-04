import 'package:flutter/material.dart';

class VoiceAndSubtitlesScreen extends StatelessWidget {
  const VoiceAndSubtitlesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Voice and subtitles',
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
          vertical: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'TEXT-TO-SPEECH-ENGINE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Divider(
                height: 10,
                color: Colors.grey[700],
              ),
              SwitchListTile(
                value: false,
                onChanged: (value) {},
                title: Text('Enable custom TTS'),
                subtitle: Text('OFF'),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                title: Text('Speech rate'),
                subtitle: Text('10'),
                enabled: false,
              ),
              Divider(),
              ListTile(
                onTap: () {},
                title: Text('Voice pitch'),
                subtitle: Text('10'),
                enabled: false,
              ),
              Text(
                'SUBTITLE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Divider(
                height: 10,
                color: Colors.grey[700],
              ),
              SwitchListTile(
                title: Text('Customized subtitle'),
                subtitle: Text('ON'),
                onChanged: (bool value) {},
                value: true,
              ),
              Divider(),
              ListTile(
                title: Text('Size'),
              ),
              Divider(),
              SwitchListTile(
                title: Text('Uppercase'),
                subtitle: Text('It allows uppercase subtitles.'),
                onChanged: (bool value) {},
                value: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
