import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  static const TextStyle headerStyle = TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 0, 62, 109));

  static const TextStyle headerStyleB = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 0, 62, 109));

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.green,
      textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold));

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Student", child: Text("Student")),
      const DropdownMenuItem(value: "Instructor", child: Text("Instructor")),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropDownGender {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Male", child: Text("Male")),
      const DropdownMenuItem(value: "Female", child: Text("Female")),
    ];
    return menuItems;
  }

  String selectedValue = "Student";
  String selectedValueGender = "Male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
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
                DropdownButtonFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      labelText: "Type of account",
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    dropdownColor: Colors.white,
                    value: selectedValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue!;
                      });
                    },
                    items: dropdownItems),
                const SizedBox(height: 40),
                Row(
                  children: const <Widget>[
                    Text("Personal Information", style: headerStyleB)
                  ],
                ),
                const SizedBox(height: 15),
                TextFormField(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                    hintText: 'Enter Username',
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
                          value: selectedValueGender,
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
                      child: TextFormField(
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
                TextFormField(
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
                      child: TextFormField(
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
                      child: TextFormField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          labelText: 'Email Address',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return const Scaffold(
                                body: SignUpProfilePic(),
                              );
                            },
                          ));
                        },
                        style: buttonStyle,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Next"),
                        )),
                  ],
                )
              ],
            )),
      ),
    );
  }
}

class SignUpProfilePic extends StatefulWidget {
  const SignUpProfilePic({super.key});

  @override
  State<SignUpProfilePic> createState() => _SignUpProfilePicState();
}

class _SignUpProfilePicState extends State<SignUpProfilePic> {
  static const TextStyle headerStyle = TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 0, 62, 109));

  static const TextStyle headerStyleB = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 0, 62, 109));

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.green,
      textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 75, 20, 20),
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
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: buttonStyle,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Next"),
                        )),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
