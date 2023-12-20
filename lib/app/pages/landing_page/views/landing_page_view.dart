import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inrest_app/app/pages/landing_page/controllers/landing_page_controller.dart';
import 'package:inrest_app/themes/color_themes.dart';
import 'package:inrest_app/themes/default_themes.dart';
import 'package:inrest_app/themes/image_themes.dart';
import 'package:inrest_app/themes/text_style_themes/landing_page_themes.dart';
import 'package:inrest_app/themes/text_style_themes/on_boarding_themes.dart';

class LandingPageView extends GetView<LandingPageController> {
  const LandingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // toolbarHeight: 80,
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
              child: Column(
            children: [
              Container(
                width: sizeWidth,
                child: Image.asset(
                  vase,
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(height: sizeHeight * 0.04),
              Container(
                width: sizeWidth * 0.79,
                child: Text("Simpan, bagikan, wujudkan kreatifitas",
                    textAlign: TextAlign.center, style: tittleOnBoarding),
              ),
              Padding(
                padding: EdgeInsets.only(top: sizeHeight * 0.02),
                child: SizedBox(
                  width: sizeWidth * 0.68,
                  child: Text(
                      "Temukan, simpan, dan bagikan ide-ide kreatif Anda.",
                      textAlign: TextAlign.center,
                      style: descOnBorading),
                ),
              ),
            ],
          )),
          Padding(
              padding: EdgeInsets.only(
                bottom: sizeHeight * 0.04,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: sizeWidth * 0.1,
                          vertical: sizeHeight * 0.02),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: primaryColor,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "Register",
                        style: registerLandingPage,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: sizeWidth * 0.1,
                          vertical: sizeHeight * 0.024),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: primaryColor),
                      child: Text(
                        "Login",
                        style: loginLandingPage,
                      ),
                    ),
                  ])),
        ],
      )),
    );
  }
}
