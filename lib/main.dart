import 'package:flutter/material.dart';
import 'next_page.dart';
import 'second.dart';
import 'third.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
// 수정: NextPage 위젯으로 이동
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            "처음처럼",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 108,
                    vertical: 10,
                  ),
                  child: const Text(
                    "뭔가 멋있는 한 마디",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "팀 소개",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 320,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    final titles = [
                      "팀 소개\n안녕하세요 5조 처음처럼 입니다.",
                      "팀 목표\n소통과 화합, 논란없는 한 주 보내기",
                      "팀 좌우명\n초심을 잃지말자!",
                    ];
                    final profileTitle = titles[index];
                    return Container(
                      width: 210,
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      child: Card(
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            const SizedBox(height: 15),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  profileTitle,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 8),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "이 사람들이 더 궁금하다면?",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
//첫번째 버튼
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
                                "https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20221230_118%2F1672375308541LL1r0_JPEG%2F%25BC%25FD%25C0%25DA%25C0%25BA%25B9%25DA%25C7%25B3%25BC%25B1_%25B7%25CE%25C1%25EE%25B0%25F1%25B5%25E5_1.jpg&type=sc960_832",
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
// 두번째 버튼
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Second(),
                                ),
                              );
                            },
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                "https://search.pstatic.net/sunny/?src=https%3A%2F%2Fmedia.istockphoto.com%2Fvectors%2Fvector-number-two-logo-design-template-with-gradient-color-vector-id1191640863%3Fk%3D20%26m%3D1191640863%26s%3D612x612%26w%3D0%26h%3D2CpqcjZpyuyURorLEyiD51P4DkaRPzKj7w9Iaa5AOws%3D&type=sc960_832",
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
// 세번째 버튼
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Third(),
                                ),
                              );
                            },
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAzMDNfMTEy%2FMDAxNTgzMjExOTg4ODEy.bp4lMEjsut-n6JM4_VSkqRCpkgiqSk5CcmqHLZe4TOMg.cQbCpCYI6TlIbzECYgEdYFaQyB4kW6FV5vm_YqR3sXEg.PNG.cpn2004%2F3.png&type=sc960_832",
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
// 네번째 버튼
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
                                "https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20230116_62%2F1673827183368TmEGP_JPEG%2F30833135_c.jpg&type=sc960_832",
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
