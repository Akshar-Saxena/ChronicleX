import 'package:flutter/material.dart';

import 'package:chroniclex/screens/news_screen.dart';
import 'package:chroniclex/screens/news_loading_page.dart';
import 'package:chroniclex/screens/login_screen.dart';
import 'package:chroniclex/screens/signup_screen.dart';
import 'package:chroniclex/miscellaneous/animation/loading_animation_screen.dart';
import 'package:chroniclex/screens/search_page.dart';
import 'package:chroniclex/screens/intital_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash',
      routes: {
        '/': (context) => const MainPage(),
        '/splash': (context) => const SplashScreen(),
        '/load': (context) => const LoadingPage(country: 'in',category: 'sports',q: ''),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/home': (context) => const HomePage(),
        '/welcome': (context) => const WelcomePage(),
      },
    );
  }
}
