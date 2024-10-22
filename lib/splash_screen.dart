import 'package:flutter/material.dart';
import 'package:mid_project/login_signup.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Welcomescreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.orangeAccent, Colors.blueAccent, Colors.purpleAccent],
          ),
        ),
        child: Center(
          child: SplashTextAnimation(),
        ),
      ),
    );
  }
}

class SplashTextAnimation extends StatefulWidget {
  @override
  _SplashTextAnimationState createState() => _SplashTextAnimationState();
}

class _SplashTextAnimationState extends State<SplashTextAnimation> {
  String fullText = "STORE";
  String currentText = "";
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    startTyping();
  }

  void startTyping() {
    Future.delayed(const Duration(milliseconds: 200), () {
      if (currentIndex < fullText.length) {
        setState(() {
          currentText += fullText[currentIndex];
          currentIndex++;
        });
        startTyping();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(seconds: 2),
      builder: (context, opacity, child) {
        return Opacity(
          opacity: opacity,
          child: Text(
            currentText,
            style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}