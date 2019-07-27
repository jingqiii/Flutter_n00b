import 'package:flutter/material.dart';
import 'package:opia/index_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Opia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IndexPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

