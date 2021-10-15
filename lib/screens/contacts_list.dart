import 'package:bytebank_contatos/screens/contact_form.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text(
                'Teste',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              subtitle: Text(
                '1000',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(
                builder: (context) => ContactForm(),
              ))
              .then(
                (newContact) => debugPrint(
                  newContact.toString(),
                ),
              );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
