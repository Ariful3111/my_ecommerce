import 'package:http/http.dart'as http;
import 'package:my_ecommerce/constant.dart';
class BannerService{
  var client=http.Client();
  var bannerUrl='$baseUrl/api/banners';

  Future<dynamic> get()async{
    var response= await client.get(
      Uri.parse("$bannerUrl?populate=image")
    );
    return response;
  }
}