import 'package:get/get.dart';
import 'package:inrest_app/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  Future splashScreen() async {
    Future.delayed(
      const Duration(seconds: 3), 
      () {
        Get.offAndToNamed(
          Routes.ON_BOARDING,
        );
      },
    );
  }

  @override
  void onInit() {
    super.onInit();
    splashScreen();
  }
}