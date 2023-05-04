import 'package:flutter/material.dart';
import 'package:lmsapp/pages/signup.dart';
import 'package:lmsapp/pages/dashboard.dart';
import 'package:lmsapp/pages/forgotpassword.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lmsapp/pages/widgets/mainPage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.green,
      textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold));

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool hasError = false;

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      return hasError = true;
    }
    return hasError = false;
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 16),
                    child: TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(),
                        hintText: 'Enter Username',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                        hintText: 'Enter Password',
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                      onPressed: () {
                        print(emailController.text);
                        print(passwordController.text);
                        signIn();
                        if (!hasError) {
                          Navigator.push(context, MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return const Scaffold(
                                body: mainPage(),
                              );
                            },
                          ));
                        }
                      },
                      style: buttonStyle,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Login"),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                              builder: (BuildContext context) {
                                return const Scaffold(
                                  body: SignUp(),
                                );
                              },
                            ));
                          },
                          child: const Text("Create an Account")),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                              builder: (BuildContext context) {
                                return const Scaffold(
                                  body: ForgetScreen(),
                                );
                              },
                            ));
                          },
                          child: const Text("Forgot Password"))
                    ],
                  )
                ],
              )),
        ),
      ),
    );
    ;
  }
}
