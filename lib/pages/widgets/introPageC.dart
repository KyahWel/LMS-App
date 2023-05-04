import 'package:flutter/material.dart';
import 'package:lmsapp/pages/login.dart';
import 'package:lmsapp/pages/signup.dart';

const TextStyle headerStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 234, 234, 255),
);

const TextStyle descStyle = TextStyle(
  fontSize: 18,
  color: Color.fromARGB(255, 234, 234, 255),
);

const TextStyle nextStyle = TextStyle(
  fontSize: 18,
  color: Color.fromARGB(255, 234, 234, 255),
);

final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.green,
    textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold));

final ButtonStyle buttonStyleB = ElevatedButton.styleFrom(
    backgroundColor: Colors.blueAccent,
    textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold));

class LandingPageC extends StatelessWidget {
  const LandingPageC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 31, 57),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(
                'https://cdni.iconscout.com/illustration/premium/thumb/boy-studying-online-2995919-2493772.png'),
            const Text('Create your own study plan',
                style: headerStyle, textAlign: TextAlign.center),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
              child: Text(
                  'Study according to the study plan, make study more motivated.',
                  style: descStyle,
                  textAlign: TextAlign.center),
            ),
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                            return const Scaffold(
                              body: LoginScreen(),
                            );
                          },
                        ));
                      },
                      style: buttonStyle,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Login"),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                            return const Scaffold(
                              body: SignUp(),
                            );
                          },
                        ));
                      },
                      style: buttonStyleB,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Sign Up"),
                      )),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
