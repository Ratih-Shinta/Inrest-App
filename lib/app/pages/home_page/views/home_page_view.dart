import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inrest_app/app/pages/home_page/controllers/home_page_controller.dart';

class HomePageView extends StatelessWidget {
  HomePageView({super.key});
final homepageController = Get.put(HomePageController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => homepageController.isLoading.value
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: homepageController.photosmodel.length,
                itemBuilder: (BuildContext context, int index) {
                  final photos = homepageController.photosmodel[index];
                  return Container(
                    margin: EdgeInsets.all(15),
                    child: ListTile(
                      leading: Image.network(photos.url),
                      title: Text(photos.photographer),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
