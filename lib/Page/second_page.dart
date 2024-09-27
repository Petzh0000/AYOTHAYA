import 'package:flutter/material.dart';
import 'package:homework1/map/watchai.dart';
import 'package:homework1/map/watyai.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('วัด'),
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
                  MaterialPageRoute(builder: (context) => Watchai()),
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
                      'assets/images/watchai.jpeg',
                      fit: BoxFit.cover, // ขยายรูปภาพให้เต็มพื้นที่
                    ),
                    SizedBox(height: 8), // ระยะห่างระหว่างรูปภาพและข้อความ
                    Text(
                      'วัดไชยวัฒนาราม', // ข้อความในกรอบ
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
                  MaterialPageRoute(builder: (context) => Watyai()),
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
                      'assets/images/watyai.jpg',
                      fit: BoxFit.cover, // ขยายรูปภาพให้เต็มพื้นที่
                    ),
                    SizedBox(height: 8), // ระยะห่างระหว่างรูปภาพและข้อความ
                    Text(
                      'วัดใหญ่ชัยมงคล', // ข้อความในกรอบ
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
