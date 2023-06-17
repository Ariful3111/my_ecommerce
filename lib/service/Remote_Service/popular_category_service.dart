import 'package:http/http.dart'as http;
import 'package:my_ecommerce/constant.dart';

class PopularCategoryService{
  var clint = http.Client();
  var popularCategoryUrl="$baseUrl/api/product-categories";

  Future<dynamic> get()async{
    var response= await clint.get(
    Uri.parse(
    '$popularCategoryUrl?populate=category,category.image&pagination[page]=1&pagination[pageSize]=5'
    ),
    );
    return response;
  }

}