import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inrest_app/app/pages/login_page/views/widgets/text_field_login_page_widgets.dart';
import 'package:inrest_app/app/pages/register_page/controllers/register_page_controller.dart';
import 'package:inrest_app/app/pages/register_page/views/widgets/or_register_page_widget.dart';
import 'package:inrest_app/themes/color_themes.dart';
import 'package:inrest_app/themes/default_themes.dart';
import 'package:inrest_app/themes/image_themes.dart';
import 'package:inrest_app/themes/text_style_themes/login_page_themes.dart';

class RegisterPageView extends GetView<RegisterPageController> {
  const RegisterPageView({super.key});

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
                      "Register",
                      style: tittleLoginPage,
                    ),
                    SizedBox(height: sizeHeight * 0.01),
                    Text(
                      "Name",
                      style: nameLoginPage,
                    ),
                    TextFieldLoginPageWidget(),
                    SizedBox(height: sizeHeight * 0.02),
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
                    Text(
                      "ConfirmPassword",
                      style: nameLoginPage,
                    ),
                    TextFieldLoginPageWidget(),
                    SizedBox(height: sizeHeight * 0.02),
                    Container(
                      alignment: Alignment.center,
                      width: sizeWidth,
                      height: sizeHeight * 0.068,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Signup",
                        style: buttonLoginPage,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Text(
                            "Already have account ? ",
                            style: forgotLoginPage,
                          ),
                          Text(
                            "Login",
                            style: chipLoginPage,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: sizeHeight * 0.02),
                    OrRegisterPageWidget(),
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
