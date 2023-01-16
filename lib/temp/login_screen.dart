import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  String email = "";
  String password = "";

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              key: const Key("email_textfield"),
              decoration: const InputDecoration(label: Text("Email")),
              onChanged: (text) {
                email = text;
              },
            ),
            const SizedBox(height: 16),
            TextField(
              key: const Key("password_textfield"),
              decoration: const InputDecoration(label: Text("Password")),
              onChanged: (text) {
                password = text;
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              key: const Key("login_elevatedbutton"),
              onPressed: () {
                if (correctCredentials()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Login success")),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Login failed")),
                  );
                }
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }

  bool correctCredentials() {
    return email == "test@cashee.com" && password == "Q!q1qwerty";
  }
}
