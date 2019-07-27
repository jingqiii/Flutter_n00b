import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather/weather_data.dart';
import 'package:http/http.dart' as http;

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {

  WeatherData weather = WeatherData.empty();

  _WeatherPageState(){
    _getWeather();
  }

  void _getWeather() async{
    WeatherData data = await _fetchWeather();
    setState((){
      weather = data;
    });
  }

  Future<WeatherData> _fetchWeather() async{
    //final response = await http.get('https://samples.openweathermap.org/data/2.5/weather?id=4887398&appid=5dbbe1e43f73ed93655abc1519985d45');
    final response = await http.get('https://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b6907d289e10d714a6e88b30761fae22');//simple
    
    if(response.statusCode == 200){
      return WeatherData.fromJson(json.decode(response.body));
    }else{
      return WeatherData.empty();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        //expand image
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset('lib/image/chicago_1.jpg', fit: BoxFit.fitHeight,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 40.0),
                child: Text(
                  'Chicago',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),

              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 100.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      weather?.tmp,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 80.0
                      ),
                    ),
                    Text(
                      weather?.cond,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 45.0
                      ),
                    ),
                    Text(
                      weather?.hum,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0
                      ),
                    ),
                  ],),
              ),
            ],
          ),
        ],
      ),
      
    );
  }
}

