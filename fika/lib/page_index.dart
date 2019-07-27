import 'package:fika/calendar_page.dart';
import 'package:fika/home_page.dart';
import 'package:fika/me_page.dart';
import 'package:fika/status_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageIndex extends StatefulWidget {
  @override
  _PageIndexState createState() => _PageIndexState();
}

class _PageIndexState extends State<PageIndex> {

  int _currentIndex = 0;

  List<Widget> list = List();
  @override
  void initState(){
    list
      ..add(HomePage())
      ..add(CalendarPage())
      ..add(StatusPage())
      ..add(MePage());
    super.initState();
  }


  static const IconData mood = IconData(
    0xf4b6, 
    fontFamily: CupertinoIcons.iconFont, 
    fontPackage: CupertinoIcons.iconFontPackage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.circle,),
            title: Text('Circle')),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.check_mark),
            title: Text('Period')),
          BottomNavigationBarItem(
            icon: Icon(mood),
            title: Text('Status')),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.ellipsis,),
            title: Text('Me')),
        ],
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
        
        type: BottomNavigationBarType.fixed,

        ),

      body: list[_currentIndex],
    );
  }
}

