// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'bottom_navigation_page.dart';

class RegistrationPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  RegistrationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr('registration.title')),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: tr('registration.name')),
              validator: (value) {
                if (value!.isEmpty) {
                  return tr('registration.name_error');
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: tr('registration.surname')),
              validator: (value) {
                if (value!.isEmpty) {
                  return tr('registration.surname_error');
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: tr('registration.email')),
              validator: (value) {
                if (value!.isEmpty) {
                  return tr('registration.email_error');
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: tr('registration.phone_number')),
              validator: (value) {
                if (value!.isEmpty) {
                  return tr('registration.phone_number_error');
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: tr('registration.password')),
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return tr('registration.password_error');
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavigationPage(key: UniqueKey())), // добавили ключ
                  );
                }
              },
              child: Text(tr('registration.register_button')),
            ),
          ],
        ),
      ),
    );
  }
}

