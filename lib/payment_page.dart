import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Payment")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter Payment Details", style: TextStyle(fontSize: 24)),
            TextField(
              decoration: InputDecoration(labelText: "Credit Card Number"),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Expiration Date"),
            ),
            TextField(
              decoration: InputDecoration(labelText: "CVV"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add payment functionality here
              },
              child: Text("Submit Payment"),
            ),
          ],
        ),
      ),
    );
  }
}
