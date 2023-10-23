import 'package:flutter/material.dart';

import 'package:chroniclex/const.dart';
import 'package:chroniclex/miscellaneous/errors/error.dart';
import 'package:chroniclex/data/users.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void showError(String title) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: ErrorMessage(title),
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
    );
  }

  void authentication() {
    String username = usernameController.text.trim();
    String password = passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      showError('Please enter your username and password.');
    } else {
      if (users.containsKey(username)) {
        if (users[username] == password) {
          Navigator.pop(context);
          Navigator.pushReplacementNamed(context, '/welcome');
        } else {
          showError('Incorrect password. Please try again.');
        }
      } else {
        showError(
            'Username not found. Please sign up or enter a valid username.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Form(
            // Wrap the entire UI in a Form widget
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 0.0,
                        horizontal: 40.0,
                      ),
                      child: TextFormField(
                        controller: usernameController,
                        style: const TextStyle(
                          color: Color(0xFFFF0000),
                          fontFamily: 'Playfair',
                          fontSize: 20.0,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 2,
                              color: Color(0xFFFF0000),
                            ),
                          ),
                          hintText: 'Enter your username',
                          hintStyle: TextStyle(
                            color: const Color(0xFFFF0000).withOpacity(0.33),
                            fontFamily: 'Playfair',
                            fontSize: 20.0,
                          ),
                        ),
                        cursorColor: const Color(0xFFFF0000),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 0.0,
                        horizontal: 40.0,
                      ),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        style: const TextStyle(
                          color: Color(0xFFFF0000),
                          fontFamily: 'Playfair',
                          fontSize: 20.0,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 2,
                              color: Color(0xFFFF0000),
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 2,
                              color: Color(0xFFFF0000),
                            ),
                          ),
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(
                            color: const Color(0xFFFF0000).withOpacity(0.33),
                            fontFamily: 'Playfair',
                            fontSize: 20.0,
                          ),
                        ),
                        cursorColor: const Color(0xFFFF0000),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: authentication,
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
                      height: 25.0,
                    ),
                    const Text(
                      'By continuing, you agree to our Terms of Services.',
                      style: kstylebottom,
                    ),
                    const Text(
                      'For more information, see our Privacy Policy.',
                      style: kstylebottom,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
