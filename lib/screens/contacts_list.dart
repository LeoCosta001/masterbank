import 'package:flutter/material.dart';
import 'package:masterbank/screens/contacts_form.dart';

class ContactsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: ListView(
        children: const <Widget>[
          Card(
            child: ListTile(
              title: Text(
                'Fulano da Silva',
                style: TextStyle(fontSize: 24.0),
              ),
              subtitle: Text(
                '10524-1',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ContactsForm()))
              .then((newContact) => debugPrint(newContact.toString()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
