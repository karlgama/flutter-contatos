import 'package:bytebank_contatos/database/app_database.dart';
import 'package:flutter/material.dart';

import 'models/contact.dart';
import 'screens/dashboard.dart';

void main() {
  runApp(Bytebank());
  save(Contact(0, 'dASD', 10000)).then((id) {
    findAll().then((contacts) => debugPrint(contacts.toString()));
  });
}

class Bytebank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.green[900],
          accentColor: Colors.blueAccent[700],
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[700],
            textTheme: ButtonTextTheme.primary,
          )),
      home: Dashboard(),
    );
  }
}
