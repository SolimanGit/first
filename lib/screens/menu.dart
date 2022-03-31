import 'package:flutter/material.dart';
import 'package:first/screens/home.dart';
import 'package:first/screens/Exercice1.dart';
import 'package:first/screens/home3.dart';
import 'package:first/screens/home5.dart';
import 'package:first/screens/Exercice8.dart';
import 'package:first/screens/Exercice7.dart';
import 'package:first/screens/home7.dart';

class MyHomePages extends StatefulWidget {
  const MyHomePages({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePages> createState() => _MyHomePageStates();
}

class _MyHomePageStates extends State<MyHomePages> {
  int index = 0;
  List<Widget> list = [
    const Exercice1(),
    const Exercice8(),
    // const MyHomePage7(title: 'Home7'),
    // const MyHomePage(title: 'Home'),
    // const MyHomePage1(title: 'Home1'),
    // const MyHomePage3(title: 'Home3'),
    const Exercice7()
  ];
  List<String> routesList = ['/exo5', '/exo1', '/exo7'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: list[index], OU
      backgroundColor: Colors.grey[350],
      body: ClipRRect(
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
        child: SizedBox(
          // decoration: const BoxDecoration(
          //     borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          //     color: Colors.white),
          height: MediaQuery.of(context).size.height * 0.80,
          child: list[index],
        ),
      ),
      drawer: Drawer(
          child: ListView(children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("assets/th.jpg")),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text('Drawer'),
            IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                })
          ]),
        ),
        Column(children: [
          ...List.generate(
            routesList.length,
            (index) => ListTile(
              title: Text('Exercice $index'),
              onTap: () {
                Navigator.pushNamed(context, routesList[index]);
              },
            ),
          )
        ]),
        // ListTile(
        //   title: const Text('Item 1'),
        //   onTap: () {
        //     Navigator.pop(context);
        //   },
        // ),
        // ListTile(
        //   title: const Text('Item 2'),
        //   onTap: () {
        //     Navigator.pop(context);
        //   },
        // ),
        // ListTile(
        //   title: const Text('Sign Out'),
        //   onTap: () {
        //     Navigator.pop(context);
        //   },
        // ),
      ])),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          currentIndex: index,
          onTap: (int i) {
            setState(() {
              index = i;
            });
          },
          backgroundColor: Colors.black.withOpacity(0),
          elevation: 0,
          // fixedColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Home',
            ),
          ]),
    );
  }
}
