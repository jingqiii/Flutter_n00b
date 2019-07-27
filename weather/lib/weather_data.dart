
class WeatherData{
  String cond;
  String tmp;
  String hum;

  WeatherData({this.cond, this.tmp, this.hum});

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      //cond: json['HeWeather6'][0]['now']['cond_txt'],
      //tmp: json['HeWeather6'][0]['now']['tmp']+"°C",
      //hum: json['HeWeather6'][0]['now']['hum']+"%",
      cond: json['weather'][0]['main'],
      tmp: json['main']['temp'] + "C",
      hum: json['main']['humidity']+"%",
    );
}

factory WeatherData.empty() {
    return WeatherData(
      cond: "...",
      tmp: "///",
      hum: "N/A",
    );
  }
}

