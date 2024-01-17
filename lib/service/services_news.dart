import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:news_app/model/artical_model.dart';

class NewsService{

  final Dio dio;

  NewsService(this.dio);

 Future<List<ArticalModel>> getNews({required String category}) async{
    try {
      Response response =await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=ba00b577d77e4c7db8520e08a326835a&category=$category');
      
         Map< String,dynamic> josonData= response.data;
         List<dynamic> articels =josonData ['articles'];
      
         List<ArticalModel>articalList=[];
         for(var artical in articels){
        ArticalModel articalModel = ArticalModel.fromJson(artical);
        articalList.add(articalModel);
         }
      
         return articalList;
    } catch (e) {
      return[];
    }
  }



}


