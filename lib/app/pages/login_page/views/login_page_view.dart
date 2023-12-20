import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inrest_app/app/pages/login_page/controllers/login_page_controller.dart';
import 'package:inrest_app/app/pages/login_page/views/widgets/or_login_page_widget.dart';
import 'package:inrest_app/app/pages/login_page/views/widgets/text_field_login_page_widgets.dart';
import 'package:inrest_app/app/routes/app_pages.dart';
import 'package:inrest_app/themes/color_themes.dart';
import 'package:inrest_app/themes/default_themes.dart';
import 'package:inrest_app/themes/image_themes.dart';
import 'package:inrest_app/themes/text_style_themes/login_page_themes.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset(background),
                  Positioned(
                    bottom: -51,
                    left: -25,
                    child: Image.asset(
                      unicorn,
                      height: 175,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: sizeWidth * 0.05, vertical: sizeHeight * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Log-in",
                      style: tittleLoginPage,
                    ),
                    SizedBox(height: sizeHeight * 0.01),
                    Text(
                      "Email",
                      style: nameLoginPage,
                    ),
                    TextFieldLoginPageWidget(),
                    SizedBox(height: sizeHeight * 0.02),
                    Text(
                      "Password",
                      style: nameLoginPage,
                    ),
                    TextFieldLoginPageWidget(),
                    SizedBox(height: sizeHeight * 0.02),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password?",
                        style: forgotLoginPage,
                      ),
                    ),
                    SizedBox(height: sizeHeight * 0.02),
                    InkWell(
                      onTap: () => Get.offNamed(Routes.HOME_PAGE),
                      child: Container(
                        alignment: Alignment.center,
                        width: sizeWidth,
                        height: sizeHeight * 0.068,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Login",
                          style: buttonLoginPage,
                        ),
                      ),
                    ),
                    SizedBox(height: sizeHeight * 0.02),
                    Center(
                      child: Row(
                        children: [
                          Text(
                            "Don't have an account ? ",
                            style: forgotLoginPage,
                          ),
                          Text(
                            "Sign-up",
                            style: chipLoginPage,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: sizeHeight * 0.02),
                    OrLoginPageWidget(),
                    SizedBox(height: sizeHeight * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Image.asset(google), Image.asset(facebook)],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
