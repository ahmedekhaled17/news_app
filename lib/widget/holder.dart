// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/model/artical_model.dart';
// import 'package:news_app/service/services_news.dart';
// import 'package:news_app/widget/news_tail.dart';
//
// class NewsListViews extends StatefulWidget {
//   const NewsListViews({Key? key}) : super(key: key);
//   @override
//   State<NewsListViews> createState() => _NewsListViewsState();
// }
//
// class _NewsListViewsState extends State<NewsListViews> {
//
//   List<ArticalModel> articls =[];
//   bool isLoading =true;
//
//   @override
//   void initState() {
//     super.initState();
//     getGenralNews();
//   }
//
//   Future<void> getGenralNews() async {
//     articls= await NewsService(Dio()).getNews();
//     isLoading=false;
//     setState(() {
//
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return isLoading ?const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())):
//     SliverList(delegate: SliverChildBuilderDelegate(
//         childCount:articls.length,
//             (context, index) {
//           return Padding(
//             padding: const EdgeInsets.only(bottom: 22),
//             child: NewsTail(
//               articalModel: articls[index],
//             ),
//           );
//         }));
//   }
// }
