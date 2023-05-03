import 'package:flutter/material.dart';
import 'package:lmsapp/pages/loading.dart';
import 'package:lmsapp/pages/login.dart';
import 'package:lmsapp/pages/signup.dart';

void main() {
  runApp(const LMSApp());
}

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

class LMSApp extends StatelessWidget {
  const LMSApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: LoadingScreen());
  }
}

class MainLanding extends StatelessWidget {
  const MainLanding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LandingPageA());
  }
}

class LandingPageA extends StatelessWidget {
  const LandingPageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 31, 57),
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

class LandingPageB extends StatelessWidget {
  const LandingPageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 31, 57),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
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
                'https://cdni.iconscout.com/illustration/premium/thumb/boy-studying-online-2995919-2493772.png'),
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

class LandingPageC extends StatelessWidget {
  const LandingPageC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 31, 57),
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
