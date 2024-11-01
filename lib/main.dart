import 'package:flutter/material.dart';
import 'welcome_page.dart';
import 'login_page.dart';
import 'payment_page.dart';
import 'sign_up_page.dart';  // Import the new sign up page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Custom App',
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/login': (context) => LoginPage(),
        '/payment': (context) => PaymentPage(),
        '/signup': (context) => SignUpPage(),  // Add signup route
      },
    );
  }
}
