import 'package:flutter/material.dart';
import 'package:lmsapp/pages/login.dart';
import 'package:lmsapp/pages/signup.dart';
import 'package:lmsapp/pages/dashboard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void addUser(
  String name,
  String email,
  String gender,
  String address,
  String age,
  String contact,
  String password,
  String username,
) async {
  try {
    // Get a reference to the Firestore collection
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    // Add a new document with a generated ID
    await users.add({
      'name': name,
      'email': email,
      'age': age,
      'gender': gender,
      'address': address,
      'contact': contact,
      'username': username,
      'password': password
    });

    print('User added to Firestore!');
  } catch (e) {
    print('Error adding user to Firestore: $e');
  }
}

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.green,
      textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold));

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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        labelText: 'New Password',
                        border: OutlineInputBorder(),
                        hintText: 'Enter New Password',
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        border: OutlineInputBorder(),
                        hintText: 'Confirm Password',
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      style: buttonStyle,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Change Password"),
                      )),
                ],
              )),
        ),
      ),
    );
    ;
  }
}
