import 'package:get/get.dart';
import 'package:my_ecommerce/controller/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(DashboardController());
  }
}