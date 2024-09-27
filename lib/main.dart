import 'package:flutter/material.dart';
import 'package:homework1/Page/first_page.dart';
import 'package:homework1/Page/fourth_page.dart';
import 'package:homework1/Page/second_page.dart';
import 'package:homework1/Page/Index.dart';
import 'package:homework1/Page/third_page.dart';
import 'package:homework1/map/watchai.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/first': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
        '/third': (context) => ThirdPage(),
        '/fourth': (context) => FourthPage()
      },
      title: 'Ayothaya ',
      home: Index(),
    );
  }
}
