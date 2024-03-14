// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'registration_page.dart';

class LanguageSelectionPage extends StatelessWidget {
  const LanguageSelectionPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                context.setLocale(const Locale('en'));
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()),
                );
              },
              child: const Text('English'),
            ),
            ElevatedButton(
              onPressed: () {
                context.setLocale(const Locale('ru'));
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()),
                );
              },
              child: const Text('Русский'),
            ),
            ElevatedButton(
              onPressed: () {
                context.setLocale(const Locale('kk'));
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()),
                );
              },
              child: Text(tr("Kazakh")),
            ),
          ],
        ),
      ),
    );
  }
}
