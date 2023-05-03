import 'package:flutter/material.dart';
import 'package:lmsapp/main.dart';
import 'package:lmsapp/pages/login.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetoMainLanding();
  }

  _navigatetoMainLanding() async {
    await Future.delayed(const Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MainLanding()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://i.ibb.co/6X54Y75/360-F-102517057-4-Tedp0g-Kw-Ck-Wwu54k-Kni0-GZ0-Dq-IWe5-MY.jpg"),
            radius: 90.0,
          ),
          const SizedBox(height: 20),
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
                        color: Color.fromARGB(255, 0, 62, 109), fontSize: 27),
                  )
                ]),
          ),
          const SizedBox(height: 100),
          const CircularProgressIndicator()
        ]),
      ),
    );
  }
}
