import 'package:first/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:first/screens/Exercice5.dart';
import 'package:first/screens/Exercice1.dart';
import 'package:first/screens/Exercice7.dart';
import 'package:first/screens/Exercice8.dart';

void main() {
  runApp(const MyApp());
}

final Map<String, Widget Function(BuildContext)> routes = {
  '/exo5': (context) => const Exercice5(),
  '/exo8': (context) => const Exercice8(),
  '/exo7': (context) => const Exercice7(),
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[350],
          primarySwatch: Colors.grey,
        ),
        home: const MyHomePages(title: 'TP'),
        initialRoute: 'exo5',
        routes: routes);
  }
}
