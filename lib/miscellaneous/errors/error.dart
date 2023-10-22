import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage(this.title,{Key? key}): super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.0,
        decoration: const BoxDecoration(
          color: Color(0xFF5E0000),
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.close_rounded,
                color: Colors.white,
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Crimson',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
      );
  }
}
