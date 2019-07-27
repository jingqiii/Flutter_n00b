import 'package:flutter/material.dart';
import 'package:sonder/index_page.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sonder',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.purple,
        accentColor: Colors.orangeAccent,
      ),
      //home: FrostedGlassDemo(),
      //home: FirstPage(),
      //home: BottomNavigationWidget(),
      home: IndexPage(),
      debugShowCheckedModeBanner: false
    );
  }
}

