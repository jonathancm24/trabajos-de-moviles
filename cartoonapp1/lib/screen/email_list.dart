import 'package:flutter/material.dart';
import 'package:cartoonapp1/backend.dart';
import 'package:cartoonapp1/screen/EmailDetailScreen.dart';


class EmailList extends StatelessWidget {

  final backend = Backend();

  EmailList({super.key});

  @override
  Widget build(BuildContext context) {
    final emails = backend.getEmails();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Correos'),
      ),
      body: ListView.builder(
        itemCount: emails.length,
        itemBuilder: (context, index) {
          final email = emails[index];
          return ListTile(
            title: Text(email.subject),
            subtitle: Text(email.from),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EmailDetailScreen(email: email),
                ),
              );
            },
          );
        },
      ),
    );
  }
}