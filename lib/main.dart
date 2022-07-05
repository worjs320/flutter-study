import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// stless로 시작
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Text('안녕')
      // home: Icon(Icons.star)
      // home: Image.asset('assets/man.png')
      // home: Container(width: 50, height: 50, color: Colors.blue,)
      home: Center(
        child:  Container(width: 50, height: 50, color: Colors.blue,)
      )
    );
  }
}
