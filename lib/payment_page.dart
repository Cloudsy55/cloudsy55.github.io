import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Payment")),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 400),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Enter Payment Details", 
                    style: TextStyle(fontSize: 24), 
                    textAlign: TextAlign.center),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(labelText: "Credit Card Number"),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  decoration: InputDecoration(labelText: "Expiration Date"),
                  keyboardType: TextInputType.datetime,
                ),
                TextField(
                  decoration: InputDecoration(labelText: "CVV"),
                  obscureText: true,
                  keyboardType: TextInputType.number,
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
        ),
      ),
    );
  }
}

