import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inrest_app/app/pages/on_boarding/controller/on_boarding_controller.dart';
import 'package:inrest_app/app/pages/on_boarding/view/widgets/on_boarding_content.dart';
import 'package:inrest_app/app/routes/app_pages.dart';
import 'package:inrest_app/themes/color_themes.dart';
import 'package:inrest_app/themes/default_themes.dart';
import 'package:inrest_app/themes/icon_themes.dart';
import 'package:inrest_app/themes/image_themes.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    OnBoardingContentList contentList = OnBoardingContentList();
    // OnBoardingController controller = Get.put(OnBoardingController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.06),
          child: Image.asset(
            logo,
            height: 35,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: (value) {
                  controller.currentIndex.value = value;
                },
                itemCount: contentList.list_on_board.length,
                itemBuilder: (context, index) => OnBoardingContent(
                  image: contentList.list_on_board[index].image,
                  title: contentList.list_on_board[index].title,
                  description: contentList.list_on_board[index].description,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: sizeWidth * 0.025,
                left: sizeWidth * 0.025,
                bottom: sizeHeight * 0.04,
              ),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () => controller.currentIndex.value ==
                              contentList.list_on_board.length - 1
                          ? Get.offAndToNamed(Routes.LANDING_PAGE)
                          : controller.pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                            ),
                      child: Center(
                        child: Image.asset(
                          iconNext,
                          height: 60,
                          color: primaryColor,
                        ),
                      )),
                  // Obx(
                  //   () => GestureDetector(
                  //       onTap: () => controller.currentIndex.value ==
                  //               contentList.list_on_board.length - 1
                  //           ? Get.offAndToNamed(Routes.LANDING_PAGE)
                  //           : controller.pageController.nextPage(
                  //               duration: Duration(milliseconds: 300),
                  //               curve: Curves.ease,
                  //             ),
                  //       child: Center(
                  //         child: Image.asset(
                  //           iconNext,
                  //           height: 60,
                  //           color: const Color(0xFF00995E),
                  //         ),
                  //       )),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
