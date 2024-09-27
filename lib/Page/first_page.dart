import 'package:flutter/material.dart';
import 'package:homework1/Page/second_page.dart'; // นำเข้าหน้า SecondPage
import 'package:homework1/Page/third_page.dart';  // นำเข้าหน้า ThirdPage
import 'package:homework1/Page/fourth_page.dart'; // นำเข้าหน้า FourthPage

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หน้าแรก'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 400, // กำหนดความกว้างของปุ่ม
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondPage()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/temple.png', width: 25, height: 25),
                    SizedBox(width: 16), // ระยะห่างระหว่างรูปภาพและข้อความ
                    Text(
                      'วัด',
                      style: TextStyle(
                        fontFamily: '4Siam', // ใช้ฟอนต์ 4Siam
                        fontSize: 16, // ขนาดฟอนต์
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30), // ระยะห่างระหว่างปุ่ม
            SizedBox(
              width: 400, // กำหนดความกว้างของปุ่ม
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ThirdPage()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/mall.png', width: 25, height: 25),
                    SizedBox(width: 16), // ระยะห่างระหว่างรูปภาพและข้อความ
                    Text(
                      'ห้างสรรพสินค้า',
                      style: TextStyle(
                        fontFamily: '4Siam', // ใช้ฟอนต์ 4Siam
                        fontSize: 16, // ขนาดฟอนต์
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30), // ระยะห่างระหว่างปุ่ม
            SizedBox(
              width: 400, // กำหนดความกว้างของปุ่ม
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FourthPage()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/hotel.png', width: 25, height: 25),
                    SizedBox(width: 16), // ระยะห่างระหว่างรูปภาพและข้อความ
                    Text(
                      'โรงแรม',
                      style: TextStyle(
                        fontFamily: '4Siam', // ใช้ฟอนต์ 4Siam
                        fontSize: 16, // ขนาดฟอนต์
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
