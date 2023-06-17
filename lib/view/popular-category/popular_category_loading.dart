
import 'package:flutter/material.dart';
import 'package:my_ecommerce/view/popular-category/popularCategoryLoadingCard.dart';

class PopularCategoryLoading extends StatefulWidget {
  const PopularCategoryLoading({Key? key}) : super(key: key);

  @override
  State<PopularCategoryLoading> createState() => _PopularCategoryLoadingState();
}

class _PopularCategoryLoadingState extends State<PopularCategoryLoading> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: EdgeInsets.only(right: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index){
          return PopularCategoryLoadingCard();
          }
      ),
    );
  }
}
