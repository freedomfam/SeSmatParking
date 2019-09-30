import 'package:flutter/material.dart';
import 'package:project/page/home.dart';
import 'package:project/page/homeVIP.dart';
import 'package:project/page/Home.dart';
import 'package:project/page/index.dart';
// import 'package:smartparking/page/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      title: 'ระบบแจ้งสถานะที่จอดรถยนต์อัจฉริยะ',
      routes: {
        '/home-page': (context) => Home(),
        '/index-page': (context) => IndexPage()
      },
    );
  }
}

