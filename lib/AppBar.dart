import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('앱 타이틀'),
          leading: Icon(Icons.menu),
          actions: [Icon(Icons.menu), Icon(Icons.menu)],
        ),
        body: SizedBox(),
      )
    );
  }
}
