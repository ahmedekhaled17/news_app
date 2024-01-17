import 'package:flutter/material.dart';
import 'package:news_app/model/categorey_model.dart';
import 'package:news_app/widget/category_card.dart';

class CategoreyListView extends StatelessWidget {
  const CategoreyListView({Key? key}) : super(key: key);

 final List <CategoreyModel> categories  = const [
   CategoreyModel(image: 'assets/11-13-12-MLP1-Float-out-4846-1-565x340.jpg', categoryName: 'General'),
   CategoreyModel(image: 'assets/entertaiment.avif', categoryName: 'Entertainment'),
   CategoreyModel(image: 'assets/technology.jpeg', categoryName: 'Technology'),
   CategoreyModel(image: 'assets/health.avif', categoryName: 'Health'),
   CategoreyModel(image: 'assets/science.avif', categoryName: 'Science'),
   CategoreyModel(image: 'assets/fifa-mobile-grid-tile-season-5-16x9-1.jpg.adapt.crop16x9.1023w.jpg', categoryName: 'Sports'),
   CategoreyModel(image: 'assets/images.jpeg', categoryName: 'Business'),

 ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context,index){
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
