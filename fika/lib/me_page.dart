import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Me'),),
      body: ListView(
        children: <Widget>[
          _topHeader(),
      ],),
    );
  }
}

Widget _topHeader(){
  return Container(
    width: ScreenUtil().setWidth(750),
    padding: EdgeInsets.all(20),
    color: Colors.pinkAccent,
    child: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 30), 
          child: ClipOval(
            child:Image.network('https://cdn.notonthehighstreet.com/system/product_images/images/000/863/251/normal_special-gifts-rose-absolutely-fabulous.jpg')
            ),
          ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text('Me',
          style: TextStyle(
            fontSize: ScreenUtil().setSp(36),
            color:Colors.white,
            ),
            ),
          )
        ],
      ),
    );

  }
