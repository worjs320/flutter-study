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
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.star),
                onPressed: (){},
              ),
              ElevatedButton(
                onPressed: (){},
                style: ButtonStyle(alignment: Alignment.center),
                child: Text('버튼'),
              )
            ],
          )
        ),
      )
    );
  }
}
