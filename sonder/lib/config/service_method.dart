import "package:dio/dio.dart";
import 'dart:async';
import 'dart:io';
import '../config/service_url.dart';

Future getHomePageContent() async{

  try{
    print('downloading....');
    Response response;
    Dio dio = new Dio();

    //使用application/x-www-form-urlencoded编码
    dio.options.contentType=ContentType.parse("application/x-www-form-urlencoded");

    var formData = {
  "userId": 1,
  "id": 1,
  "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
  "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
};

    response = await dio.post(serviceUrl, data:formData);

    if(response.statusCode==200){
      return response.data;
    }else{
      throw Exception('checking.........');
    }
  }catch(e){
    return print('Error');
  }

}

