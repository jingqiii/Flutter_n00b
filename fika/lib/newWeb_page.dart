import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class NewsWebPage extends StatefulWidget {

  String news_url;
  String title;

  NewsWebPage(this.news_url, this.title);
  
  @override
  _NewsWebPageState createState() => _NewsWebPageState();
}

class _NewsWebPageState extends State<NewsWebPage> {
  String  news_url;
  String title;
  bool loading = true;
  bool isLoadingCallBackPage = false;
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();
  //URL 变化监听
  StreamSubscription<String> onUrlChanged;
  // WebView加载状态变化监听器
  StreamSubscription<WebViewStateChanged> onStateChanged;
  // 插件提供的对象，该对象用于WebView的各种操作
  FlutterWebviewPlugin flutterWebViewPlugin = new FlutterWebviewPlugin();


  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}