import 'package:flutter/material.dart';
import 'package:homework1/Page/Index.dart';
import 'package:homework1/Page/login_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Index()),);

              },
              child: const Text('Register'),
            ),
            const SizedBox(height: 14.0),

            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPage()),);
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
