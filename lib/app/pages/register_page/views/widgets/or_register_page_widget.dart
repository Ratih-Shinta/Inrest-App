import 'package:flutter/material.dart';
import 'package:inrest_app/themes/color_themes.dart';
import 'package:inrest_app/themes/default_themes.dart';
import 'package:inrest_app/themes/text_style_themes/login_page_themes.dart';

class OrRegisterPageWidget extends StatelessWidget {
  const OrRegisterPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 1.5,
            width: sizeWidth * 0.3,
            color: blackColor,
          ),
          Text(
            "Or signup with",
            style: forgotLoginPage,
          ),
          Container(
            height: 1.5,
            width: sizeWidth * 0.3,
            color: blackColor,
          ),
        ],
      ),
    );
  }
}
