import 'package:get/get.dart';
import 'package:my_ecommerce/model/Banner.dart';
import 'package:my_ecommerce/model/Category.dart';
import 'package:my_ecommerce/service/Remote_Service/Banner%20Service.dart';
import 'package:my_ecommerce/service/Remote_Service/popular_category_service.dart';

class HomeController extends GetxController{
  static HomeController instance= Get.find();
  RxList<adBanner> bannerlist= List<adBanner>.empty(growable: true).obs;
  RxList<Category> popularCategorylist= List<Category>.empty(growable: true).obs;
  RxBool isBannerLoading= false.obs;
  RxBool ispopularCategoryLoading= false.obs;


  @override
  void onInit() {
    // TODO: implement onInit
    getBanners();
    super.onInit();
  }

  void getBanners()async{
    try{
      isBannerLoading(true);
      var result= await BannerService().get();
      if(result!=null){
        bannerlist.assignAll(adBannerListFromJson(result.body));
      }
    }finally {
      print("Banner list length ${bannerlist.length} ");
      isBannerLoading(false);
    }
  }
  void getpopularCategory()async{
    try{
      ispopularCategoryLoading(true);
      var result= await PopularCategoryService().get();
      if(result!=null){
        popularCategorylist.assignAll(PopularCategoryFromJson(result.body));
      }
    }finally {
      print("popularCategory list length ${popularCategorylist.length} ");
      ispopularCategoryLoading(false);
    }
  }

}