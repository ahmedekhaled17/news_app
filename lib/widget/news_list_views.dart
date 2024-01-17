import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/artical_model.dart';
import 'package:news_app/service/services_news.dart';
import 'package:news_app/widget/news_tail.dart';

class NewsListViews extends StatelessWidget {
 final List<ArticalModel> articls ;
  const NewsListViews({Key? key,required this.articls}) : super(key: key);


@override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate(
        childCount:articls.length,
            (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTail(
              articalModel: articls[index],
            ),
          );
        }));
 }
}
