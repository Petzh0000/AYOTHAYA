import 'package:flutter/material.dart';
import 'package:homework1/Page/first_page.dart';
import 'package:homework1/Page/fourth_page.dart';
import 'package:homework1/Page/second_page.dart';
import 'package:homework1/Page/third_page.dart';
import 'package:homework1/widget/drawer.dart';

class Index extends StatefulWidget {
  const Index({super.key});
  @override
  State<Index> createState() => _TestState();
}

class _TestState extends State<Index> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    FirstPage(),
    SecondPage(),
    ThirdPage(),
    FourthPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AYOTHAYA'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[300], // ตั้งสีพื้นหลังเป็นสีเทาอ่อน
        unselectedItemColor: Colors.grey[600], // ตั้งสีของไอคอนและข้อความที่ไม่ได้เลือกเป็นสีเทาเข้ม
        selectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'หน้าแรก',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/temple.png', width: 24, height: 24),
            label: 'วัด',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/mall.png', width: 24, height: 24),
            label: 'ห้างสรรพสินค้า',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/hotel.png', width: 24, height: 24),
            label: 'โรงแรม',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      drawer: DrawerWidget(),
    );
  }
}
