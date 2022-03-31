import 'package:flutter/material.dart';

class MyHomePage7 extends StatefulWidget {
  const MyHomePage7({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage7> createState() => _MyHomePage7State();
}

class _MyHomePage7State extends State<MyHomePage7> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Profile',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 400,
              width: 275,
            ),
          ),
        ],
      ),
    ));
  }
}
