import 'package:flutter/material.dart';
import 'package:homework1/map/ayutthayacitypark.dart';
import 'package:homework1/map/centralayut.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ห้างสรรพสินค้า'),
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
                  MaterialPageRoute(builder: (context) => Centralayut()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(
                    bottom: 30.0), // ระยะห่างระหว่างกรอบรูป
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.black, width: 2.0), // ขอบของรูป
                  borderRadius: BorderRadius.circular(8.0), // มุมโค้งของขอบ
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/central ayut.jpg',
                      fit: BoxFit.cover, // ขยายรูปภาพให้เต็มพื้นที่
                    ),
                    SizedBox(height: 8), // ระยะห่างระหว่างรูปภาพและข้อความ
                    Text(
                      'เซ็นทรัล อยุธยา', // ข้อความในกรอบ
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
                  MaterialPageRoute(builder: (context) => Ayutthayacitypark()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.black, width: 2.0), // ขอบของรูป
                  borderRadius: BorderRadius.circular(8.0), // มุมโค้งของขอบ
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/citypark.jpeg',
                      fit: BoxFit.fitWidth, // ขยายรูปภาพให้เต็มพื้นที่
                    ),
                    SizedBox(height: 8), // ระยะห่างระหว่างรูปภาพและข้อความ
                    Text(
                      'อยุธยา ซิตี้ พาร์ค', // ข้อความในกรอบ
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
