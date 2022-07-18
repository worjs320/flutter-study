import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Row(
                children: [
                  Text(
                    '지축로 3가',
                    style: TextStyle(color: Colors.black),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                  )
                ],
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.search, color: Color(0xff000000)),
                  tooltip: 'Search',
                  onPressed: () {},
                ),
                IconButton(
                    icon: Icon(Icons.menu, color: Color(0xff000000)),
                    tooltip: 'Menu',
                    onPressed: () {}),
                IconButton(
                    icon: Icon(Icons.notifications_none,
                        color: Color(0xff000000)),
                    tooltip: 'Notice',
                    onPressed: () {}),
              ],
            ),
            body: Container(
                width: double.infinity,
                alignment: Alignment.topLeft,
                height: 150,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFDEDEDE)),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Row(children: [
                  Container(
                      width: 140,
                      height: double.infinity,
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset('mu.png', fit: BoxFit.cover),
                      )),
                  Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        SizedBox(
                            child: Text(
                          "haha ha의 최애 고양이, 무(중성화 수술 했음)"
                              .replaceAll('', '\u{200B}'),
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )),
                        Flexible(
                          child: Text(
                            "경기도 고양시 덕양구 · 3분 전",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            "923,345,123원",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ButtonTheme(
                                minWidth: 0,
                                child: MaterialButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.all(10),
                                  shape: const CircleBorder(),
                                  child: Icon(Icons.favorite_border, size: 20),
                                ),
                              ),
                              // IconButton(iconSize: 20, icon: Icon(Icons.favorite_border), onPressed: (){}, padding: EdgeInsets.zero, constraints: BoxConstraints(),),
                              Text("4", style: TextStyle(fontSize: 15))
                            ],
                          ),
                        )
                      ]))
                ]))));
  }
}
