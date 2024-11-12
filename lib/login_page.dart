import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _loginMessage = "";

  void _attemptLogin() {
    if (_formKey.currentState!.validate()) {
      String username = _usernameController.text;
      String password = _passwordController.text;

      setState(() {
        if (username == 'admin' && password == 'password') {
          _loginMessage = "Login successful!";
          _usernameController.clear();
          _passwordController.clear();
        } else {
          _loginMessage = "Invalid username or password.";
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 400),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _usernameController,
                        decoration: InputDecoration(labelText: "Username"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your username";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 16), // Space between fields
                      TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(labelText: "Password"),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your password";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: _attemptLogin,
                        child: Text("Login"),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  _loginMessage,
                  style: TextStyle(
                    color: _loginMessage == "Login successful!" ? Colors.green : Colors.red,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: Text("Create Account"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

