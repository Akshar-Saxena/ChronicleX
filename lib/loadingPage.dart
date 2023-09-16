import 'dart:convert';
import 'package:chroniclex/homePage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:chroniclex/const.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key, this.country, this.category, this.q});

  final country;
  final category;
  final q;

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  List<Widget> newsList = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    if (widget.category != 'all') {
      Response response = await get(
        Uri.parse(
            'https://newsapi.org/v2/top-headlines?q=${widget.q}&country=${widget.country}&category=${widget.category}&apiKey=0987d344494d4b85b35b587df7baea70'),
      );
      displayData(response);
    } else {
      Response response = await get(
        Uri.parse(
            'https://newsapi.org/v2/everything?q=${widget.q}&apiKey=0987d344494d4b85b35b587df7baea70'),
      );
      displayData(response);
    }
  }

  void displayData(response) {
    if (response.statusCode == 200) {
      String data = response.body;
      var decodeData = jsonDecode(data);
      for (var news in decodeData['articles']) {
        if (news['urlToImage'] != null &&
            news['content'] != null &&
            news['title'] != null &&
            news['description'] != null) {
          newsList.add(
            Container(
              margin: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    news['urlToImage'].toString(),
                    scale: 3.9,
                  ),
                  Text(
                    news['title'].toString(),
                    style: kstylenewstitle,
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    news['description'].toString(),
                    style: kstylenewsdesc,
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    news['content'].toString(),
                    style: kstylenewscontent,
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    'Published : ${news['publishedAt']} by ${news['author']}',
                    style: kstylenewspublish,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          );
        }
      }
      if (newsList.isEmpty) {
        newsList.add(const SizedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
            child: Text(
              'No News for the field Selected, \nTry again with other Country',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white60,
                fontFamily: 'Crimson',
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ));
      }
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomePage(
          data: newsList,
        );
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: LoadingAnimationWidget.dotsTriangle(
              color: const Color(0xFFFF0000), size: 100.0),
        ),
      ),
    );
  }
}
