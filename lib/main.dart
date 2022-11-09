import 'package:flutter/material.dart';
import 'package:raflix/pages/homepage.dart';
import 'package:raflix/pages/searchpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        '/search': (context) => const SearchPage(),
      },
    );
  }
}
