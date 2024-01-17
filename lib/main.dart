import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/service/services_news.dart';
import 'package:news_app/views/home_view.dart';

void main() {

 // NewsService(Dio()).getNews();
  runApp(const NewsApp());
}


class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeView()
    );
  }
}

