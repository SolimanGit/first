import 'package:flutter/material.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage2> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage2> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.home, size: 100, color: Color.fromARGB(255, 120, 120, 120)),
        const Text('Home')
      ],
    )));
    //   bottomNavigationBar: BottomNavigationBar(
    //       currentIndex: index,
    //       onTap: (int i) {
    //         setState(() {
    //           index = i;
    //         });
    //       },
    //       backgroundColor: Colors.blue,
    //       fixedColor: Colors.white,
    //       items: const [
    //         BottomNavigationBarItem(
    //           icon: Icon(Icons.home),
    //           label: 'Home',
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Icon(Icons.list),
    //           label: 'Home',
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Icon(Icons.person),
    //           label: 'Home',
    //         )
    //       ]),
    // );
  }
}
