import 'package:flutter/material.dart';
import 'package:job_application/pages/home_page.dart';
import 'package:job_application/pages/splash_page.dart';
import 'package:job_application/pages/onboarding_page.dart';
import 'package:job_application/pages/sigin_page.dart';

class Routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnboardingPage(),
        '/sigin': (context) => SiginPage(),
        '/signup': (context) => SiginPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
