import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'main.dart';

class SecondRoute extends StatelessWidget {

  final List<String> entries = <String>[
    '전체',
    '과자류',
    '면류',
    '육가공품',
    '빙과류',
    '즉석식품',
    '음료수',
    '냉장식품',
    '냉동식품',
    '제빵류',
    '소스,장류',
    '건강식품',
    ' ',
    ' '
  ];
  //상품 리스트 목록

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          title: Center(
            child: Text('전체상품',
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
            ),),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                }
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left:20,right:20,bottom: 5, top: 50),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Colors.black,
                          width: 1,
                      )
                  )
              ), //
              ),
            //리스트 위의 공백

            ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20,0,20,0),
                    child: Text('${entries[index]}',
                    style: TextStyle(
                      fontSize: 18,
                    ),),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage())
                    );
                  },
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                    indent: 12,
                    color: Colors.black38,
                  ),
              //리스트 사이 선
            ),
            //전체 리스트
          ],
        ));
  }
}
