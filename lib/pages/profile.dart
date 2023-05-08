import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lmsapp/pages/login.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _image;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  Future signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.push(context, MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return const Scaffold(
            body: LoginScreen(),
          );
        },
      ));
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Logout'),
                  IconButton(
                    icon: const Icon(Icons.logout),
                    onPressed: () {
                      signOut();
                    },
                  )
                ],
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Wrap(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.photo_library),
                          title: const Text('Gallery'),
                          onTap: () {
                            Navigator.of(context).pop();
                            _pickImage(ImageSource.gallery);
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.camera_alt),
                          title: const Text('Camera'),
                          onTap: () {
                            Navigator.of(context).pop();
                            _pickImage(ImageSource.camera);
                          },
                        ),
                      ],
                    ),
                  );
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 100,
                      backgroundColor: Color(0xFF003E6D),
                      backgroundImage: _image != null
                          ? FileImage(_image!)
                          : const NetworkImage(
                                  'https://img.freepik.com/free-icon/user_318-563642.jpg?w=360')
                              as ImageProvider,
                    ),
                    const Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'William Cris Hod',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'williamcris.hod02@gmail.com',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () {
                  // Add your code here
                },
                child: const Text(
                  'Change your password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text('Age: 21'),
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Gender: Male'),
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Address: Quezon City'),
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone: 09270287483'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
