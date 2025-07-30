import 'package:flutter/material.dart';
// import 'package:kamus_indonesia_sahu/Screens/HomePage.dart';
import 'package:kamus_indonesia_sahu/Screens/HomeScreen.dart';
import 'package:kamus_indonesia_sahu/text_style.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Wait for 5 seconds and then navigate to the main page
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(), // Replace with your main page
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Kamus Bahasa Indonesia-Sahu",
                style: poppinsTextMedium.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black // Set the font color for light theme
                      : Colors.white,
                ),
              ),
              Lottie.asset(
                'assets/animation/splash.json',
                width: 280,
                height: 280,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
