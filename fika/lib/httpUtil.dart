import "package:dio/dio.dart";
import 'dart:async';
import 'dart:io';



Future getHomePageContent() async{

  const serviceUrl= 'https://mashape-community-urban-dictionary.p.rapidapi.com/define?term=wat';//此端口针对于正版用户开放，可自行fiddle获取。
  const servicePath={
  'homePageContext': serviceUrl+'wxmini/homePageContent', // 商家首页信息
};

const headers={
    "X-RapidAPI-Host": "mashape-community-urban-dictionary.p.rapidapi.com",
    "X-RapidAPI-Key": "7f6864019emsh29cded0b3016222p1fb2b4jsnbb9e1f2ddabd"
  };

  try{
    print('开始获取首页数据...............');
    Response response;
    Dio dio = new Dio();
    dio.options.headers = headers;
    dio.options.contentType=ContentType.parse("application/json");
    //var formData = {'lon':'115.02932','lat':'35.76189'};
    //FormData formData = new FormData.from({"name": "wendux", "age": 25,});
    //response = await dio.post(serviceUrl,data:formData);
    response = await dio.get(serviceUrl);
    if(response.statusCode==200){
      return response.data;
    }else{
      throw Exception('后端接口出现异常，请检测代码和服务器情况.........');
    }
  }catch(e){
    return print('ERROR:======>${e}');
  }

}