import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lmsapp/pages/login.dart';

const TextStyle headerStyle = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 0, 62, 109));

const TextStyle headerStyleB = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 0, 62, 109));

final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.green,
    textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold));

final FirebaseAuth _auth = FirebaseAuth.instance;

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

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  List<DropdownMenuItem<String>> get dropDownGender {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Male", child: Text("Male")),
      const DropdownMenuItem(value: "Female", child: Text("Female")),
    ];
    return menuItems;
  }

  String selectedValueGender = "";
  final TextEditingController fullnameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  Future<void> signUpAuth() async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      print('User registered successfully!');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print('Error registering user: $e');
    }
  }

  Future<void> signUpUser() async {
    try {
      // Get a reference to the Firestore collection
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');

      // Add a new document with a generated ID
      await users.add({
        'name': fullnameController.text.trim(),
        'email': emailController.text.trim(),
        'age': ageController.text.trim(),
        'gender': selectedValueGender,
        'address': addressController.text.trim(),
        'contact': contactController.text.trim(),
        'username': usernameController.text.trim(),
        'password': passwordController.text.trim()
      });
      print('User added to Firestore!');
    } catch (e) {
      print('Error adding user to Firestore: $e');
    }
  }

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 55, 20, 20),
            child: Column(
              children: <Widget>[
                Row(
                  children: const <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://i.ibb.co/6X54Y75/360-F-102517057-4-Tedp0g-Kw-Ck-Wwu54k-Kni0-GZ0-Dq-IWe5-MY.jpg"),
                      radius: 40.0,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Sign Up',
                      style: headerStyle,
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: const <Widget>[
                    Text("Personal Information", style: headerStyleB)
                  ],
                ),
                const SizedBox(height: 15),
                TextField(
                  controller: fullnameController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    labelText: 'Full Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    SizedBox(
                      width: 150,
                      height: 60,
                      child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(15, 10, 10, 10),
                            labelText: "Gender",
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          dropdownColor: Colors.white,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValueGender = newValue!;
                            });
                          },
                          items: dropDownGender),
                    ),
                    const SizedBox(width: 20),
                    SizedBox(
                      width: 150,
                      height: 60,
                      child: TextField(
                        controller: ageController,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          labelText: 'Age',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: addressController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    labelText: 'Full Address',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    SizedBox(
                      width: 150,
                      height: 60,
                      child: TextField(
                        controller: contactController,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          labelText: 'Contact #',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 160,
                      height: 60,
                      child: TextField(
                        controller: emailController,
                        onChanged: (value) {
                          usernameController.text = value;
                        },
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          labelText: 'Email Address',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: const <Widget>[
                    Text("Account Informaton", style: headerStyleB)
                  ],
                ),
                const SizedBox(height: 15),
                TextField(
                  readOnly: true,
                  controller: usernameController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    hintText: 'Enter Password',
                  ),
                ),
                const SizedBox(height: 15),
                TextField(
                  controller: confirmpasswordController,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(),
                    hintText: 'Enter Password',
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: () async {
                          if (passwordController.text ==
                              confirmpasswordController.text) {
                            try {
                              await FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text,
                              );
                              Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                                  return const Scaffold(
                                    body: LoginScreen(),
                                  );
                                },
                              ));
                              try {
                                await FirebaseAuth.instance.signOut();
                              } catch (e) {
                                print(e);
                              }
                              try {
                                await users.add({
                                  'name': fullnameController.text,
                                  'email': emailController.text,
                                  'age': ageController.text,
                                  'gender': selectedValueGender,
                                  'address': addressController.text,
                                  'contact': contactController.text,
                                  'username': usernameController.text,
                                  'password': passwordController.text
                                });

                                print('User added to Firestore!');
                              } catch (e) {
                                print('Error adding user to Firestore: $e');
                              }
                              print('User registered successfully!');
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'weak-password') {
                                print('The password provided is too weak.');
                              } else if (e.code == 'email-already-in-use') {
                                print(
                                    'The account already exists for that email.');
                              }
                            } catch (e) {
                              print('Error registering user: $e');
                            }
                          } else {
                            print('Wrong Passwords');
                          }
                        },
                        style: buttonStyle,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Sign Up"),
                        )),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
