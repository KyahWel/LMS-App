import 'package:flutter/material.dart';
import 'package:lmsapp/pages/loading.dart';
import 'package:lmsapp/pages/widgets/introPageA.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lmsapp/pages/widgets/mainPage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const LMSApp());
}

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
    return Scaffold(
        body: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                print(snapshot);
                return const mainPage();
              } else {
                print('User Logged Out');
                return const LandingPageA();
              }
            }));
  }
}
