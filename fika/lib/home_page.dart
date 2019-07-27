import 'package:fika/httpUtil.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String homePageContent = 'downloading...';

  @override
  void initState() {
    getHomePageContent().then((val){
      setState(() {
        homePageContent = val.toString();
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Text(homePageContent),),
    );
  }
}

