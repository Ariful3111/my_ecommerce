import 'package:get/get.dart';
import 'package:my_ecommerce/view/dashboard/dashboard_binding.dart';
import 'package:my_ecommerce/view/dashboard/dashboard_screen.dart';

class AppRoute{
  static const String dashboard='/dashboard';

  static String getdashboard()=>dashboard;

  static var list=[
    GetPage(
        name: dashboard, page:()=> DashBoardScreen(),
        binding: DashboardBinding()
    )
  ];
}