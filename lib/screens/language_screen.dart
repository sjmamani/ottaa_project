import 'package:flutter/material.dart';
import 'package:ottaa_project/screens/widgets/setting_section.dart';
import 'package:ottaa_project/utils/build_app_bar.dart';
import 'package:ottaa_project/utils/language_items.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Language'),
      body: SettingSection(
        items: language_items,
      ),
    );
  }
}
