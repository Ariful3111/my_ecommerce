import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CaroselLoading extends StatefulWidget {
  const CaroselLoading({Key? key}) : super(key: key);

  @override
  State<CaroselLoading> createState() => _CaroselLoadingState();
}

class _CaroselLoadingState extends State<CaroselLoading> {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: ClipRect(
                clipBehavior: Clip.antiAlias,
                child: AspectRatio(
                  aspectRatio: 16/9,
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Container(
                 height: 10,
                 width: 10,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   color: Colors.grey,
                 ),
               ),
                SizedBox(width: 2,),
                Container(
                 height: 10,
                 width: 10,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   color: Colors.grey,

                 ),
               ),
                SizedBox(width: 2,),
                Container(
                 height: 10,
                 width: 10,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   color: Colors.grey,

                 ),
               ),
                SizedBox(width: 2,),
                Container(
                 height: 10,
                 width: 10,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   color: Colors.grey,

                 ),
               ),
                SizedBox(width: 2,),
                Container(
                 height: 10,
                 width: 10,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   color: Colors.grey,

                 ),
               ),
                SizedBox(width: 2,),
                Container(
                 height: 10,
                 width: 10,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   color: Colors.grey,

                 ),
               ),

              ],
            ),
          ],
        ),
        baseColor: Colors.white,
        highlightColor: Colors.grey.shade300
    );
  }
}
