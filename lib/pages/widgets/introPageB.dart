import 'package:flutter/material.dart';
import 'package:lmsapp/pages/widgets/introPageA.dart';
import 'package:lmsapp/pages/widgets/introPageC.dart';

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

class LandingPageB extends StatelessWidget {
  const LandingPageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 31, 57),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(_createRouteA());
                    },
                    child: const Text(
                      'Back',
                      style: nextStyle,
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(_createRouteB());
                    },
                    child: const Text(
                      'Next',
                      style: nextStyle,
                    )),
              ],
            ),
            const SizedBox(height: 70),
            Image.network(
                'https://cdn.dribbble.com/users/4214751/screenshots/10503785/website_vec_2-01.png'),
            const Text('Quick and Easy learning',
                style: headerStyle, textAlign: TextAlign.center),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
              child: Text(
                  'Easy and fast learning at any time to help you  improve various skills.',
                  style: descStyle,
                  textAlign: TextAlign.center),
            )
          ],
        ),
      )),
    );
  }
}

Route _createRouteA() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const LandingPageA(),
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

Route _createRouteB() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const LandingPageC(),
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
