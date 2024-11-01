import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to EasyPost!",
              style: TextStyle(
                fontSize: 32, // Increased font size
                fontWeight: FontWeight.bold, // Bold text
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40), // Space between title and buttons
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text("Login"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/payment');
              },
              child: Text("Go to Payment"),
            ),
          ],
        ),
      ),
    );
  }
}

