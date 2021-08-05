import 'package:flutter/material.dart';
import 'package:ottaa_project/screens/widgets/setting_section.dart';
import 'package:ottaa_project/utils/build_app_bar.dart';
import 'package:ottaa_project/utils/subtitle_items.dart';
import 'package:ottaa_project/utils/text_to_speech_items.dart';

class VoiceAndSubtitlesScreen extends StatelessWidget {
  const VoiceAndSubtitlesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Voice and subtitles'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SettingSection(items: text_to_speech_items),
            SettingSection(items: subtitle_items),
          ],
        ),
      ),
    );
  }
}
