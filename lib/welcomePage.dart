import 'package:chroniclex/loadingPage.dart';
import 'package:flutter/material.dart';
import 'package:chroniclex/const.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  var dropdownvaluecountry = 'in';
  var dropdownvaluecategory = 'sports';
  var query = '';

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
                        vertical: 0.0, horizontal: 40.0),
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
                            value: dropdownvaluecountry,
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
                            items: const [
                              DropdownMenuItem(
                                value: 'in',
                                child: Text('India'),
                              ),
                              DropdownMenuItem(
                                value: 'ca',
                                child: Text('Canada'),
                              ),
                              DropdownMenuItem(
                                value: 'ar',
                                child: Text('Argentina'),
                              ),
                              DropdownMenuItem(
                                value: 'au',
                                child: Text('Australia'),
                              ),
                              DropdownMenuItem(
                                value: 'be',
                                child: Text('Belgium'),
                              ),
                              DropdownMenuItem(
                                value: 'br',
                                child: Text('Brazil'),
                              ),
                              DropdownMenuItem(
                                value: 'cn',
                                child: Text('China'),
                              ),
                              DropdownMenuItem(
                                value: 'fr',
                                child: Text('France'),
                              ),
                              DropdownMenuItem(
                                value: 'de',
                                child: Text('Germany'),
                              ),
                              DropdownMenuItem(
                                value: 'gr',
                                child: Text('Greece'),
                              ),
                              DropdownMenuItem(
                                value: 'my',
                                child: Text('Malaysia'),
                              ),
                              DropdownMenuItem(
                                value: 'mx',
                                child: Text('Mexico'),
                              ),
                              DropdownMenuItem(
                                value: 'nz',
                                child: Text('New Zealand'),
                              ),
                              DropdownMenuItem(
                                value: 'ru',
                                child: Text('Russia'),
                              ),
                              DropdownMenuItem(
                                value: 'za',
                                child: Text('South Africa'),
                              ),
                              DropdownMenuItem(
                                value: 'th',
                                child: Text('Thailand'),
                              ),
                              DropdownMenuItem(
                                value: 'gb',
                                child: Text('United K.'),
                              ),
                              DropdownMenuItem(
                                value: 'us',
                                child: Text('United S.'),
                              ),
                            ],
                            onChanged: (String? value) {
                              setState(() {
                                dropdownvaluecountry = value.toString();
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 125.0,
                          child: DropdownButton(
                            value: dropdownvaluecategory,
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
                            items: const [
                              DropdownMenuItem(
                                value: 'all',
                                child: Text('All'),
                              ),
                              DropdownMenuItem(
                                value: 'sports',
                                child: Text('Sports'),
                              ),
                              DropdownMenuItem(
                                value: 'business',
                                child: Text('Business'),
                              ),
                              DropdownMenuItem(
                                value: 'entertainment',
                                child: Text('Entertainment'),
                              ),
                              DropdownMenuItem(
                                value: 'general',
                                child: Text('General'),
                              ),
                              DropdownMenuItem(
                                value: 'health',
                                child: Text('Health'),
                              ),
                              DropdownMenuItem(
                                value: 'science',
                                child: Text('Science'),
                              ),
                              DropdownMenuItem(
                                value: 'technology',
                                child: Text('Technology'),
                              ),
                            ],
                            onChanged: (String? value) {
                              setState(() {
                                dropdownvaluecategory = value.toString();
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoadingPage(
                            category: dropdownvaluecategory,
                            country: dropdownvaluecountry,
                            q: query,
                          ),
                        ),
                      );
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
