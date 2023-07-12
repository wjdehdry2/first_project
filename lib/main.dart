import 'package:flutter/material.dart';
import 'next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor:
            Colors.transparent, // 상세페이지에서 showmodalbottomsheet 배경색 투명으로 설정
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key}); // 생성자

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor:
            Colors.transparent, // 상세페이지에서 showmodalbottomsheet 배경색 투명으로 설정
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white, // 16줄 때문에 배경화면 검정색으로 되면 요거 설정!
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
              ),
              // 텍스트
              Text(
                "이 사람들이 더 궁금하다면?",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Container(
                //overflow 방지용
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //person_1
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Next_Page(),
                          ),
                        );
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbrO5OY%2FbtsnhSk6px0%2FE7RspYyQ47acPHz8dAYbdK%2Fimg.png",
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    //person_2
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Next_Page(),
                          ),
                        );
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbrO5OY%2FbtsnhSk6px0%2FE7RspYyQ47acPHz8dAYbdK%2Fimg.png",
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    //person_3
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Next_Page(),
                          ),
                        );
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbrO5OY%2FbtsnhSk6px0%2FE7RspYyQ47acPHz8dAYbdK%2Fimg.png",
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    //person_4
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Next_Page(),
                          ),
                        );
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbrO5OY%2FbtsnhSk6px0%2FE7RspYyQ47acPHz8dAYbdK%2Fimg.png",
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
