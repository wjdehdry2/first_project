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
          centerTitle: false,
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text(
            "처음처럼",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              padding: EdgeInsets.all(9),
              child: Align(
                alignment: Alignment.center, // 가운데 정렬
                child: Text(
                  "뭔가 멋있는 한 마디",
                  textAlign: TextAlign.center, // 가로로 꽉 채우기
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 14), // 간격 추가
            Align(
              alignment: Alignment.centerLeft, // 왼쪽 정렬
              child: Text(
                "팀 소개",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 12), // 간격 추가
            SizedBox(
              height: 120, // 프로필 컨테이너의 높이 설정
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // 가로 스크롤 설정
                itemCount: 3, // 프로필 개수에 맞게 설정
                itemBuilder: (context, index) {
                  return Container(
                    width: 120, // 프로필 컨테이너의 너비 설정
                    margin: EdgeInsets.symmetric(horizontal: 8), // 프로필 간 간격 설정
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40, // 프로필 이미지 반지름 설정
                          backgroundImage: AssetImage(
                              "assets/profile_image.png"), // 프로필 이미지 설정
                        ),
                        SizedBox(height: 8), // 간격 추가
                        Text(
                          "프로필 $index", // 프로필 제목 설정
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
