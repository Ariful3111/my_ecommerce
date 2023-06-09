import 'package:flutter/material.dart';
import 'package:my_ecommerce/component/main_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      children: [
        MainHeadder(),
      ],
    ));
  }
}
