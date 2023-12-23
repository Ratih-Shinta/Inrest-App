import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inrest_app/app/pages/home_page/controllers/home_page_controller.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final HomePageController homepageController = Get.put(HomePageController());

  @override
  void initState() {
    super.initState();
    homepageController.fetchProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => homepageController.isLoading.value
            ? const CircularProgressIndicator()
            : ListView.builder(
                itemCount: homepageController.photosmodel.length,
                itemBuilder: (BuildContext context, int index) {
                  final photos = homepageController.photosmodel[index];
                  return Container(
                    margin: const EdgeInsets.all(15),
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
