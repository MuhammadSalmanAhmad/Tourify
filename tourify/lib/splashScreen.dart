import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourify/Onboarding%20Sceens/onboarding_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    //set timer for splash screen
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
