import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sonder/pages/cart_page.dart';
import 'package:sonder/pages/category_page.dart';
import 'package:sonder/pages/home_page.dart';
import 'package:sonder/pages/me_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _currentIndex = 0;
  var _currentPage;
  var _pageController = new PageController(initialPage: 0);

  var pages = <Widget>[
    HomePage(),
    CategoryPage(),
    CartPage(),
    MePage(),
  ];

  final _widgetOptions = [
    Text('Index 0: Home'),
    Text('Index 1: Category'),
    Text('Index 2: Cart'),
    Text('Index 3: Me'),
  ];

  final List<BottomNavigationBarItem> _bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      title: Text('Home')
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.shuffle),
      title: Text('Category')
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.shopping_cart),
      title: Text('Cart')
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.person),
      title: Text('Me')
    ),
  ];

  final List tabBodies = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    MePage(),
  ];

  @override
  void initState() {
    _currentPage = tabBodies[_currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: _bottomTabs,
        onTap: (index){
          setState(() {
            _currentIndex = index;
            _currentPage = tabBodies[_currentIndex];
          });
        },
      ),
      
      body: _currentPage,
    );
  }
}
