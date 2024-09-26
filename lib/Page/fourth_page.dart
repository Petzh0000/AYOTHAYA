import 'package:flutter/material.dart';
import 'package:homework1/map/centara.dart';
import 'package:homework1/map/mayuu.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('โรงแรม'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // เพิ่ม padding รอบๆ
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch, // ขยายเต็มความกว้าง
          children: [
            // รูปแบบที่มีขอบและข้อความ
            InkWell(
            onTap: () {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Centara()),
      );
      },
        child: Container(
              margin: const EdgeInsets.only(bottom: 30.0), // ระยะห่างระหว่างกรอบรูป
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0), // ขอบของรูป
                borderRadius: BorderRadius.circular(8.0), // มุมโค้งของขอบ
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Centara.jpg',
                    fit: BoxFit.cover, // ขยายรูปภาพให้เต็มพื้นที่
                  ),
                  SizedBox(height: 8), // ระยะห่างระหว่างรูปภาพและข้อความ
                  Text(
                    'เซ็นทารา อยุธยา', // ข้อความในกรอบ
                    style: TextStyle(
                      fontFamily: '4Siam',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ),
            // รูปแบบที่มีขอบและข้อความ
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Mayuu()),
          );
        },
        child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0), // ขอบของรูป
                borderRadius: BorderRadius.circular(8.0), // มุมโค้งของขอบ
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Mayuu.jpg',
                    fit: BoxFit.cover, // ขยายรูปภาพให้เต็มพื้นที่
                  ),
                  SizedBox(height: 8), // ระยะห่างระหว่างรูปภาพและข้อความ
                  Text(
                    'มาอยู่ อยุธยา', // ข้อความในกรอบ
                    style: TextStyle(
                      fontFamily: '4Siam',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
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
