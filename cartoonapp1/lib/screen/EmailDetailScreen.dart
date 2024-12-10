import 'package:flutter/material.dart';
import 'package:cartoonapp1/email.dart';

class EmailDetailScreen extends StatelessWidget {
  final Email email;

  EmailDetailScreen({required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(email.subject),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('From: ${email.from}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 16),
            Text('Body:', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text(email.body),
          ],
        ),
      ),
    );
  }
}

