import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce/component/main_header.dart';
import 'package:my_ecommerce/controller/controllers.dart';
import 'package:my_ecommerce/view/home/carouselLoading.dart';
import 'package:my_ecommerce/view/home/caruselSliderView.dart';
import 'package:my_ecommerce/view/popular-category/popular_category_loading.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        MainHeadder(),
        Obx(() {
          if (homeController.bannerlist.isNotEmpty) {
            return caruselSliderView(bannerlist: homeController.bannerlist);
          } else {
            return CaroselLoading();
          }
        }),
        Obx(() {
          if (homeController.bannerlist.isNotEmpty) {
            return PopularCategoryLoading();
          } else {
            return CaroselLoading();
          }
        }),
      ],
    ));
  }
}
