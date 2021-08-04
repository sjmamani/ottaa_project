import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Language',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'LANGUAGE',
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
              onTap: () {},
              title: Text('Language'),
            ),
            Divider(),
            SwitchListTile(
              value: false,
              onChanged: (value) {},
              title: Text('OTTA Labs'),
              subtitle: Text(
                  'Use artificial intelligence to generate a richer sentence. You need a stable internet connection.'),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
