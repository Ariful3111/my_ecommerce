import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badge;

class MainHeadder extends StatelessWidget {
  const MainHeadder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        //borderRadius: BorderRadius.all(Radius.circular(24)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            blurRadius: 10,

          ),
        ]
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(24)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      blurRadius: 10,
                      offset: Offset(0, 0)
                  ),
                ]
            ),
            child: TextField(
              autofocus: false,
              onSubmitted: (value){

              },
              onChanged: (value){

              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 16
                ),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none,

                ),
                hintText: 'Search..',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          )),

          const SizedBox(width: 8,),
          Container(
            height: 46,
            width: 46,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  blurRadius: 8,
                )
              ]
            ),
            child: Icon(Icons.filter_alt_outlined,
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: 8,),
          badge.Badge(
            badgeContent: const Text('1',
            style: TextStyle(
              color: Colors.white
            ),
            ),
            badgeColor: Theme.of(context).primaryColor,
            child: Container(
              height: 46,
              width: 46,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      blurRadius: 8,
                    )
                  ]
              ),
              child: Icon(Icons.shopping_cart_outlined,
                color: Colors.grey,
              ),
            ),
          ),
         const SizedBox(height: 5,)
        ],
      ),
    );
  }
}
