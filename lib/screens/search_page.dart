import 'package:flutter/material.dart';

import 'package:chroniclex/const.dart';
import 'package:chroniclex/data/data.dart';
import 'package:chroniclex/screens/news_loading_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String dropdownValueCountry = 'in';
  String dropdownValueCategory = 'sports';
  String query = '';

  void redirect() {
    // Navigator.pushNamed(
    //   context,
    //   '/load',
    //   arguments: {
    //     'q': query,
    //     'country': dropdownValueCountry,
    //     'category': dropdownValueCategory,
    //   },
    // );
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => LoadingPage(
              query, dropdownValueCountry, dropdownValueCategory)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    'Welcome, Akshar Saxena',
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
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          query = value;
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
                        hintText: 'Search a Phrase or Keyword',
                        hintStyle: TextStyle(
                          color: const Color(0xFFFF0000).withOpacity(0.33),
                          fontFamily: 'Playfair',
                          fontSize: 20.0,
                        ),
                      ),
                      cursorColor: const Color(0xFFFF0000),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 40.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 120.0,
                          child: DropdownButton(
                            value: dropdownValueCountry,
                            icon: const Icon(
                              Icons.arrow_downward,
                              color: Color(0xFFFF0000),
                            ),
                            style: TextStyle(
                              color: const Color(0xFFFF0000).withOpacity(0.6),
                              fontFamily: 'Playfair',
                              fontSize: 20.0,
                            ),
                            isExpanded: true,
                            dropdownColor: Colors.black,
                            menuMaxHeight: 200.0,
                            underline: Container(
                              height: 2,
                              color: const Color(0xFFFF0000),
                            ),
                            alignment: Alignment.center,
                            items: countries.map((country) {
                              return DropdownMenuItem(
                                value: country['value'],
                                child: Text(country['label']!),
                              );
                            }).toList(),
                            onChanged: (String? value) {
                              setState(() {
                                dropdownValueCountry = value.toString();
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 125.0,
                          child: DropdownButton(
                            value: dropdownValueCategory,
                            icon: const Icon(
                              Icons.arrow_downward,
                              color: Color(0xFFFF0000),
                            ),
                            style: TextStyle(
                              color: const Color(0xFFFF0000).withOpacity(0.6),
                              fontFamily: 'Playfair',
                              fontSize: 20.0,
                            ),
                            dropdownColor: Colors.black,
                            menuMaxHeight: 200.0,
                            isExpanded: true,
                            underline: Container(
                              height: 2,
                              color: const Color(0xFFFF0000),
                            ),
                            alignment: Alignment.center,
                            items: categories.map((category) {
                              return DropdownMenuItem(
                                value: category['value'],
                                child: Text(category['label']!),
                              );
                            }).toList(),
                            onChanged: (String? value) {
                              setState(() {
                                dropdownValueCategory = value.toString();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 150.0,
                  ),
                  ElevatedButton(
                    onPressed: redirect,
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
                      width: 120.0,
                      height: 50.0,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Search',
                              style: kstylebutton,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Icon(
                              Icons.search,
                              size: 30.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
