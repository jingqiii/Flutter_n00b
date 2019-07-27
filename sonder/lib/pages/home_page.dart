import 'package:flutter/material.dart';
import 'package:sonder/config/service_method.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _homePageContent = 'Downloading...';

  @override
  void initState() {
    getHomePageContent().then((val){
      setState(() {
        _homePageContent = val.toString();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sonder'),),
      body: SingleChildScrollView(
        child: Text(_homePageContent),
        ),
      
    );
  }
}