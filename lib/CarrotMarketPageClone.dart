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
            body: ListView(
              children: [
                ShopItem(
                    image: 'mu.png',
                    title: "haha ha의 최애 고양이, 무(중성화 수술 했음)",
                    address: "경기도 고양시 지축로 1",
                    price: "56,234,233원",
                    likeCount: "1"),
                ShopItem(
                    image: 'man.png',
                    title: "김재건의 '놀라워 말랑인간' 이모티콘 모방작",
                    address: "경기도 고양시 지축로 2",
                    price: "6,234,233원",
                    likeCount: "2"),
                ShopItem(
                    image: 'mu.png',
                    title: "haha ha의 최애 고양이, 무(중성화 수술 했음)",
                    address: "경기도 고양시 지축로 3",
                    price: "68,233원",
                    likeCount: "3"),
                ShopItem(
                    image: 'man.png',
                    title: "김재건의 '놀라워 말랑인간' 이모티콘 모방작",
                    address: "경기도 고양시 지축로 4",
                    price: "3,233원",
                    likeCount: "4"),
                ShopItem(
                    image: 'mu.png',
                    title: "haha ha의 최애 고양이, 무(중성화 수술 했음)",
                    address: "경기도 고양시 지축로 5",
                    price: "233원",
                    likeCount: "5"),
                ShopItem(
                    image: 'man.png',
                    title: "김재건의 '놀라워 말랑인간' 이모티콘 모방작",
                    address: "경기도 고양시 지축로 6",
                    price: "12,334,233원",
                    likeCount: "6"),
              ],
            )));
  }
}

class ShopItem extends StatelessWidget {
  final String image;
  final String title;
  final String address;
  final String price;
  final String likeCount;

  const ShopItem(
      {Key? key,
      required this.image,
      required this.title,
      required this.address,
      required this.price,
      required this.likeCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        alignment: Alignment.topLeft,
        height: 150,
        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
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
                child: Image.asset(image, fit: BoxFit.cover),
              )),
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                SizedBox(
                    child: Text(
                  title.replaceAll('', '\u{200B}'),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )),
                Flexible(
                  child: Text(
                    address,
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
                Flexible(
                  child: Text(
                    price,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
                      Text(likeCount, style: TextStyle(fontSize: 15))
                    ],
                  ),
                )
              ]))
        ]));
  }
}
