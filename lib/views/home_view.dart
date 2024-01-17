import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widget/News_List_View_Bulider.dart';
import 'package:news_app/widget/categorey_list_view.dart';
import 'package:news_app/widget/category_card.dart';
import 'package:news_app/widget/news_list_views.dart';
import 'package:news_app/widget/news_tail.dart';

import '../model/artical_model.dart';
import '../service/services_news.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const [
            Text('News',style:TextStyle(
              color: Colors.black,
             ),
            ),
            Text('Cloud',style:TextStyle(
              color: Colors.orange,
            ),
            ),
          ],
        ),
      ),
      body:const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),

        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoreyListView()),
            SliverToBoxAdapter(child:
              SizedBox(
                height: 32,)
              ,),
            NewsListViewsBulider(
              category: 'general',
            ),
          ],
        ),
        // child: Column(
        //   children: [
        //     CategoreyListView(),
        //     SizedBox(
        //       height: 32,
        //     ),
        //     Expanded(child: NewsListViews()),
         // ],
        ),
    );
  }
}

// class NewsListViewsBulider extends StatefulWidget {
//   const NewsListViewsBulider({
//     Key? key, required String category,
//   }) : super(key: key);
//
//   @override
//   State<NewsListViewsBulider> createState() => _NewsListViewsBuliderState();
// }
//
// class _NewsListViewsBuliderState extends State<NewsListViewsBulider> {
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
//     articls= await NewsService(Dio()).getNews(
//       category: 'general'
//     );
//     isLoading=false;
//     setState(() {
//
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return isLoading ? SliverToBoxAdapter(
//         child: Center(
//             child: CircularProgressIndicator()))
//         : NewsListViews(
//       articls: articls,
//     );
//   }
// }
