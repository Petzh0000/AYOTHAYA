import 'package:flutter/material.dart';
import 'package:homework1/Page/Index.dart';
import 'package:homework1/Page/login_page.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Text(
              'User404',
              style: TextStyle(
                fontFamily: '4Siam',
                color: Colors.white,
                fontSize: 36,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('หน้าแรก',
              style: TextStyle(
              fontFamily: '4Siam',
              color: Colors.black,
              fontSize: 20,
              ),),
            onTap: () {
              Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => Index()),);
            },
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('เข้าสู่ระบบ',
              style: TextStyle(
                fontFamily: '4Siam',
                color: Colors.black,
                fontSize: 20,
              ),),
            onTap: () {
              Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => LoginPage()),);
            },
          ),
        ],
      ),
    );
  }
}
