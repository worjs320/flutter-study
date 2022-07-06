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
        body: Text('안녕'),
        bottomNavigationBar: SizedBox(
          height: 60,
          child: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page)
              ]
            ),
          ),
        )
      )
    );
  }
}
