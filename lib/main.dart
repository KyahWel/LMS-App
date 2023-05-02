import 'package:flutter/material.dart';

void main() {
  runApp(const LMSApp());
}

class LMSApp extends StatelessWidget {
  const LMSApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: const <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://t3.ftcdn.net/jpg/01/02/51/70/360_F_102517057_4Tedp0gKwCkWwu54kKni0GZ0DqIWe5MY.jpg"),
                    radius: 150.0,
                  ),
                  SizedBox(height: 10),
                  Text("Name of Application")
                ],
              ))),
    );
  }
}
