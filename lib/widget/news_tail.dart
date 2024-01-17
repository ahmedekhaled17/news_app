import 'package:flutter/material.dart';
import 'package:news_app/model/artical_model.dart';

class NewsTail extends StatelessWidget {
  const NewsTail({Key? key,required this.articalModel}) : super(key: key);

  final ArticalModel articalModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            articalModel.image??'https://cdn.sanity.io/images/xmpcmhrn/production/f363771ad3c072ec71f1ea5e8f3868d18de231a6-1200x800.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover
          )
    ),
        const SizedBox(
          height: 12,
        ),
        Text(articalModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),
        ),
       const SizedBox(
         height: 8,
       ),
        Text(articalModel.subtitle??'fixed nwes',
          maxLines: 2,
        //  overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
          ),
        ),
      ],
    );
  }
}
