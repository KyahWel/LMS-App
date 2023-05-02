import 'package:flutter/material.dart';
import 'package:lmsapp/pages/signup.dart';

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
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold));

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://i.ibb.co/6X54Y75/360-F-102517057-4-Tedp0g-Kw-Ck-Wwu54k-Kni0-GZ0-Dq-IWe5-MY.jpg"),
                    radius: 90.0,
                  ),
                  RichText(
                    text: const TextSpan(
                        text: 'Name of ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 77, 77, 77),
                            fontSize: 27,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Application',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 62, 109),
                                fontSize: 27),
                          )
                        ]),
                  ),
                  const SizedBox(height: 50),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(),
                        hintText: 'Enter Username',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                        hintText: 'Enter Password',
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                      onPressed: () {},
                      style: buttonStyle,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Login"),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                            return Scaffold(
                              appBar: AppBar(
                                iconTheme: IconThemeData(
                                  color: Colors.black,
                                ),
                                elevation: 0,
                                backgroundColor: Colors.white,
                              ),
                              body: const SignUp(),
                            );
                          },
                        ));
                      },
                      child: const Text("Create an Account"))
                ],
              )),
        ),
      ),
    );
  }
}
