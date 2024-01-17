import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widget/news_list_views.dart';
import 'package:news_app/service/services_news.dart';
import '../model/artical_model.dart';
import '../service/services_news.dart';

class NewsListViewsBulider extends StatefulWidget {
  const NewsListViewsBulider({Key? key, required this.category}) : super(key: key);

  final String category;
  @override
  State<NewsListViewsBulider> createState() => _NewsListViewsBuliderState();
}

class _NewsListViewsBuliderState extends State<NewsListViewsBulider> {

  var future;
  @override
  void initState() {

    super.initState();
  future =  NewsService(Dio()).getNews(
    category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<ArticalModel>>(
      future: future,
        builder: (context,snapshot){
      if (snapshot.hasData) {
        return NewsListViews(
              articls: snapshot.data!,
        );
      }else if(snapshot.hasError){
       return SliverToBoxAdapter(
              child: Text('opps try again'),
            );
      }else {
        return SliverToBoxAdapter(
            child: Center(
            child: CircularProgressIndicator()));
      }
    });
  }
}