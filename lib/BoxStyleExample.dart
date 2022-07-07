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
      home: Scaffold(
        appBar: AppBar(
          title: Text('앱임'),
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity, height: 50, color: Colors.indigoAccent,
            // margin: EdgeInsets.all(20),
            // padding: EdgeInsets.all(20),
            // decoration: BoxDecoration(
            //     border: Border.all(color: Colors.pink),
            //     borderRadius: BorderRadius.circular(10)
            // ),
          ),
        ),
      )
    );
  }
}
