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
          title: Text('앱임'),
        ),
        body: SizedBox(
          // child: Text('안녕하세요',
          //   style: TextStyle(fontSize: 30, color: Color(0xff9f64ff)),
          // ),
          child: Icon(Icons.star,
            color: Color.fromRGBO(255, 1, 1, 3),
          ),
        )
      )
    );
  }
}
