import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShopPage(),
    );
  }
}

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("쇼핑카트")),
      //Column을 ListView로 바꾸면 화면을 꽉 채운다.
      //Column일 때는 자녀의 크기만큼 가로 크기가 결정된다.
      body: Column(
        children: [
          // 1. 이미지
          AspectRatio(
            aspectRatio: 3 / 2,
            child: Image.network(
              "https://picsum.photos/id/100/200/200",
              fit: BoxFit.cover,
            ),
          ),

          // 2. 버튼 2개
          //Column 자녀에 Row()를 배치해서 가로로 늘어남
          //즉 위에 이미지도 가운데로 감( Column은 crosAxias가 기본 center기 때문에)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  //BoxDecoration 쓰면 Container에 색상 주면 안 되고 BoxDecoration에 생상을 줘야한다..
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.account_circle_sharp)),
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  //BoxDecoration 쓰면 Container에 색상 주면 안 되고 BoxDecoration에 생상을 줘야한다..
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.access_alarm,
                      color: Colors.purple,
                    )),
              ),
            ],
          ),

          // 3. 동그라미 2개
          _circle(),
          _field(),
        ],
      ),
    );
  }

  Stack _field() {
    return Stack(children: [
      TextFormField(
        maxLines: 3, // 여러 줄 입력 허용
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.person),
          enabledBorder: OutlineInputBorder(),
        ),
      ),
      Positioned(
        left: 200,
        top: 50,
        child: Icon(Icons.person),
      )
    ]);
  }

  Container _circle() {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(),
          borderRadius: BorderRadius.circular(100)),
      child: Align(
        alignment: Alignment(1, 0),
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(75)),
        ),
      ),
    );
  }
}
