import 'package:flutter/material.dart';
import 'package:lmsapp/pages/widgets/introPageB.dart';

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

Route _createRouteA() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const LandingPageB(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class LandingPageA extends StatelessWidget {
  const LandingPageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 31, 57),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(_createRouteA());
                    },
                    child: const Text(
                      'Next',
                      style: nextStyle,
                    )),
              ],
            ),
            const SizedBox(height: 70),
            Image.network(
                'https://cdn.dribbble.com/users/6273831/screenshots/18259879/__________________1.png'),
            const Text('Numerous free trial course',
                style: headerStyle, textAlign: TextAlign.center),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Text('Free courses for you to find your way of learning',
                  style: descStyle, textAlign: TextAlign.center),
            )
          ],
        ),
      )),
    );
  }
}
