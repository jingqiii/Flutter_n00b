import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:opia/NavigationIconView.dart';

import 'global_config.dart';
import 'home/home_page.dart';
import 'home/idea/idea_page.dart';
import 'market/market_page.dart';
import 'my/my.dart';
import 'notice/notice_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> with TickerProviderStateMixin{

  int _currentIndex = 0;
  List<NavigationIconView> _navigationViews;
  List<StatefulWidget> _pageList;
  StatefulWidget _currentPage;

  @override
  void initState() {

    super.initState();
    _navigationViews = <NavigationIconView> [
      new NavigationIconView(
        icon: new Icon(Icons.assignment),
        title: new Text('Home'),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.assignment),
        title: new Text('Idea'),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.assignment),
        title: new Text('cart'),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.assignment),
        title: new Text('info'),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.assignment),
        title: new Text('Me'),
        vsync: this,
      ),
    ];
    for (NavigationIconView view in _navigationViews){
      view.controller.addListener(_rebuild);
    }
    _pageList = <StatefulWidget>[
      new HomePage(),
      new IdeaPage(),
      new MarketPage(),
      new NoticePage(),
      new MyPage(),
    ];
    _currentPage = _pageList[_currentIndex];

  }

  void _rebuild() {
    setState(() {
    });
  }

  @override
  void dispose() {
    super.dispose();
    for (NavigationIconView view in _navigationViews){
      view.controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
      items: _navigationViews.map((NavigationIconView navigationIconView) => navigationIconView.item)
      .toList(),
      currentIndex: _currentIndex,
      fixedColor: Colors.blue,
      type: BottomNavigationBarType.fixed,
      onTap: (int index){
        setState(() {
          _navigationViews[_currentIndex].controller.reverse();
          _currentIndex = index;
          _navigationViews[_currentIndex].controller.forward();
          _currentPage = _pageList[_currentIndex];
        });
      },
    );
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: _currentPage,
        ),
        bottomNavigationBar: bottomNavigationBar,
      ),
      theme: GlobalConfig.themeData,
    );
  }
}