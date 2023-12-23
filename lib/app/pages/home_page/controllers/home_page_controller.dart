import 'package:get/get.dart';
import 'package:inrest_app/app/models/photos_model/photos_model.dart';
import 'package:http/http.dart' as http;

class HomePageController extends GetxController {
  var isLoading = true.obs;
  RxList<PhotosModel> photosmodel = <PhotosModel>[].obs; // Fix: Use PhotosModel type

  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async {
    try {
      final response = await http.get(
  Uri.parse('https://api.pexels.com/v1/search?query=nature&per_page=100'),
  headers: {'Authorization': 'BJl0ap1V86KsHfXbjGfPS9qRjGvuyahozrf277axY6w927Ym7ph94blu'},
);

      if (response.statusCode == 200) {
        photosmodel.value =
            productPhotosModelFromJson(response.body);
        isLoading(true).obs;
      } else {
        print('error: ${response.statusCode}');
      }
    } catch (e) {
      print(e);
    }
  }
}
