import 'package:flutter/material.dart';

class Exercice1 extends StatelessWidget {
  const Exercice1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(height: 60, width: 60, color: Colors.blue),
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(height: 60, width: 60, color: Colors.blue),
            Container(height: 60, width: 60, color: Colors.blue),
          ]),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(height: 60, width: 60, color: Colors.blue),
              Container(height: 60, width: 60, color: Colors.blue),
              Container(height: 60, width: 60, color: Colors.blue),
            ],
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     backgroundColor: Colors.blue,
      //     fixedColor: Colors.white,
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(icon: Icon(null), label: ' '),
      //       BottomNavigationBarItem(icon: Icon(null), label: ' '),
      //       BottomNavigationBarItem(icon: Icon(null), label: ' ')
      //     ]),
    );
  }
}
