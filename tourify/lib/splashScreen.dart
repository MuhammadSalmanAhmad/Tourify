import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourify/MainPanel/MainPanel.dart';
import 'package:tourify/Onboarding%20Sceens/onboarding_Screen.dart';
import 'package:tourify/user_Auth_login_screens/SignIn.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final auth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    //set timer for splash screen

    auth.authStateChanges().listen((User?user) {
      if (user == null) {
        Future.delayed(const Duration(seconds: 5)).then((value) =>
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: ((context) {
          return const SignInScreen();
        }))));
      } else {
       Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: ((context) {
          return const MainScreen();
        })));
      }
    });
     Future.delayed(const Duration(seconds: 5)).then((value) =>
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: ((context) {
          return const OnboardingScreen();
        }))));
  }

  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1E90FF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: const Center(
            child: Image(image: AssetImage('assets/Logo.png')),
          )),
        ],
      ),
    );
  }
}
