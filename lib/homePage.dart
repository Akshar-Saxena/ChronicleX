import 'package:chroniclex/const.dart';
import 'package:flutter/material.dart';
import 'package:chroniclex/loadingPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, this.data});
  final data;

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
          title: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/welcome');
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color(0xFFFF0000),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios_rounded,
                  ),
                  Text(
                    'Previous Page',
                    style: kstylenewscontent,
                  )
                ],
              ),
            ),
          ),
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: widget.data,
          ),
        ),
      ),
    );
  }
}
