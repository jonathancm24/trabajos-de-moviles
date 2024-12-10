import 'package:cartoonapp1/screen/email_list.dart';

import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 

      title: 'Flutter Demo',
      theme: ThemeData(
        // ... your theme customizations
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
 const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push( 

              context,
              MaterialPageRoute(builder: (context) => EmailList()),
            );
          },
          child: const Text('Show Emails'),
        ),
      ),
    );
  }
}