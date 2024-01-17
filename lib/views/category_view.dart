import 'package:flutter/material.dart';
import 'package:news_app/views/home_view.dart';

import '../widget/News_List_View_Bulider.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key, required this.category}) : super(key: key);
 final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewsBulider(
            category: category,
          ),
        ],
      ),
    );
  }
}
