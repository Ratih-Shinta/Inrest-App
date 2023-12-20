import 'package:get/get.dart';
import 'package:inrest_app/app/pages/home_page/controllers/home_page_controller.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(() => HomePageController());
  }
}
