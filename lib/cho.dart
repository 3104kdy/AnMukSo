import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Muk-So'),
        ),
        body: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 60),
                    ),
                    Container(
                      height: 25,
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 12),
                      color: Colors.white,
                      child: Text('새로운 소식',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    SizedBox(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        width: 343,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2)),
                        child: Text('     2021년 8월 아토피 캠프 공지 입니다.'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 40),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 12),
                      color: Colors.white,
                      child: Text('새로운 제품',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                    )
                  ],
                )),
            SliverPadding(
              padding: const EdgeInsets.all(10),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                childAspectRatio: 1 / 1.2,
                children: <Widget>[
                  GestureDetector(
                    child: Column(
                      children: [
                        Container(
                          child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.asset('assets/snacks/shrimp.png')),
                        ),
                        Container(
                          child: const Text('농심 새우깡',
                            style: TextStyle(
                              fontSize: 10,
                            ),),
                          color: Colors.white,
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    },
                  ),
                  GestureDetector(
                    child: Column(
                      children: [
                        Container(
                          child: SizedBox(
                              width: 100,
                              height: 100,
                              child:
                              Image.asset('assets/snacks/onionRing.png')),
                        ),
                        Container(
                          child: const Text('농심 양파링',
                            style: TextStyle(
                              fontSize: 10,
                            ),),
                          color: Colors.white,
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    },
                  ),
                  GestureDetector(
                    child: Column(
                      children: [
                        Container(
                          child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.asset('assets/snacks/postick.png')),
                        ),
                        Container(
                          child: const Text('농심 포스틱',
                            style: TextStyle(
                              fontSize: 10,
                            ),),
                          color: Colors.white,
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    },
                  ),
                  GestureDetector(
                    child: Column(
                      children: [
                        Container(
                          child: SizedBox(
                              width: 100,
                              height: 100,
                              child:
                              Image.asset('assets/snacks/chickchock.png')),
                        ),
                        Container(
                          child: const Text('롯데 칙촉',
                            style: TextStyle(
                              fontSize: 10,
                            ),),
                          color: Colors.white,
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    },
                  ),
                  GestureDetector(
                    child: Column(
                      children: [
                        Container(
                          child: SizedBox(
                              width: 100,
                              height: 100,
                              child:
                              Image.asset('assets/snacks/chocolate.png')),
                        ),
                        Container(
                          child: const Text('오리온 초코송이',
                            style: TextStyle(
                              fontSize: 10,
                            ),),
                          color: Colors.white,
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    },
                  ),
                  GestureDetector(
                    child: Column(
                      children: [
                        Container(
                          child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.asset('assets/snacks/octopus.png')),
                        ),
                        Container(
                          child: const Text('농심 자갈치',
                            style: TextStyle(
                              fontSize: 10,
                            ),),
                          color: Colors.white,
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    },
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                    ),
                    Container(
                      height: 25,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 12),
                      color: Colors.white,
                      child: Text('안먹소 먹거리 정보 채널 ( YOUTUBE )',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    SizedBox(
                      child: Container(
                          alignment: Alignment.center,
                          width: 343,
                          height: 228,
                          child: Image.asset('assets/snacks/tasteOfNature.png')
                        // AssetImage('assets/snacks/octopus.png'),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.fromLTRB(12, 10, 0.0, 5),
                      color: Colors.white,
                      child: Text('후원 계좌',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),

                    ),
                    SizedBox(
                      child: Container(
                        alignment: Alignment.center,
                        width: 342,
                        height: 76,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black, width: 3)),
                        child: Text('우리은행 1002-101-21-2229 안전한 먹거리 소비자 연합\n'
                            '    카카오 1242-445-6446 안전한 먹거리 소비자 연합'),
                      ),
                    ),
                  ],
                )),
          ],
        ));
  }
}
