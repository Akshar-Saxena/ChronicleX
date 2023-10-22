import 'package:chroniclex/const.dart';
import 'package:flutter/material.dart';
// import 'package:chroniclex/loadingPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.data}) : super(key: key);
  final List<Widget>? data;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          title: const Text(
            'News Articles',
            style: kstylenewscontent,
          ),
          leading: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Color(0xFFFF0000),
              ),
            ),
            child: const Icon(
              Icons.arrow_back_ios_rounded,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: widget.data ?? const [],
          ),
        ),
      ),
    );
  }
}
