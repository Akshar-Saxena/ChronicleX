import 'package:flutter/material.dart';
import 'package:chroniclex/const.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var username;
  var password;

  void authentication() {
    if (username.trim() == 'akshar' && password.trim() == 'a') {
      Navigator.pushNamed(context, '/welcome');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Container(
            height: 50.0,
            decoration: const BoxDecoration(
              color: Color(0xFF5E0000),
              borderRadius: BorderRadius.all(Radius.circular(14.0)),
            ),
            child: const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                  ),
                  Text(
                    'Wrong Password or Username',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Crimson',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
          ),
          behavior: SnackBarBehavior.floating,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
      );
    }
  }

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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 40.0),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          username = value.toString();
                        });
                      },
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
                        vertical: 0.0, horizontal: 40.0),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          password = value.toString();
                        });
                      },
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
                    onPressed: () {
                      authentication();
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
    );
  }
}
