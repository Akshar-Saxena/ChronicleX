import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    pushToMain();
  }

  void pushToMain() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    if (!context.mounted) return;
    Navigator.pushNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: LoadingAnimationWidget.staggeredDotsWave(
            color: const Color(0xFFFF0000),
            size: 200,
          ),
        ),
      ),
    );
  }
}
