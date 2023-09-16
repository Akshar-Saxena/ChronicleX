import 'package:chroniclex/homePage.dart';
import 'package:chroniclex/loadingPage.dart';
import 'package:chroniclex/loginPage.dart';
import 'package:chroniclex/signupPage.dart';
import 'package:chroniclex/splashScreen.dart';
import 'package:chroniclex/welcomePage.dart';
import 'package:flutter/material.dart';
import 'package:chroniclex/const.dart';

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
        '/load': (context) => const LoadingPage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
        '/home': (context) => const HomePage(),
        '/welcome': (context) => const WelcomePage(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 58.0,
                  ),
                  Text(
                    'Chronicle X',
                    style: kstyletitle,
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'Empowering Minds,',
                    style: kstyletagline,
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'Igniting Conversations,',
                    style: kstyletagline,
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'Every Day.',
                    style: kstyletagline,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(Color(0xFFFF0000)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                      ),
                    ),
                    child: const SizedBox(
                      width: 200.0,
                      height: 50.0,
                      child: Center(
                        child: Text(
                          'Log In',
                          style: kstylebutton,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.black),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          side: const BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    child: const SizedBox(
                      width: 200.0,
                      height: 50.0,
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: kstylebutton,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Column(
                children: [
                  Text(
                    'By continuing, you agree to our Terms of Services.',
                    style: kstylebottom,
                  ),
                  Text(
                    'For more information, see our Privacy Policy.',
                    style: kstylebottom,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
