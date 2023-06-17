import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PopularCategoryLoadingCard extends StatelessWidget {
  const PopularCategoryLoadingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      shadowColor: Colors.grey,
      borderRadius: BorderRadius.circular(10),
      child: Shimmer.fromColors(
          child: Container(
            height: 270,
            width: 140,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.white,
      ),
    );
  }
}
