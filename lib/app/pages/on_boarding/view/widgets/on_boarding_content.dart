import 'package:flutter/material.dart';
import 'package:inrest_app/themes/default_themes.dart';
import 'package:inrest_app/themes/image_themes.dart';
import 'package:inrest_app/themes/text_style_themes/on_boarding_themes.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: sizeWidth,
          child: Image.asset(
            image,
            fit: BoxFit.fitWidth,
          ),
        ),
        SizedBox(height: sizeHeight * 0.04),
        Container(
          width: sizeWidth * 0.79,
          child:
              Text(title, textAlign: TextAlign.center, style: tittleOnBoarding),
        ),
        Padding(
          padding: EdgeInsets.only(top: sizeHeight * 0.02),
          child: SizedBox(
            width: sizeWidth * 0.68,
            child: Text(description,
                textAlign: TextAlign.center, style: descOnBorading),
          ),
        ),
      ],
    );
  }
}

class OnBoardingContentList {
  final List<OnBoardingContent> list_on_board = [
    const OnBoardingContent(
      image: gallery,
      title: "Temukan inspirasi  di Insrest!",
      description:
          "Selamat datang di Insrest! Temukan dunia kreativitas dan inspirasi bersama kami.",
    ),
    const OnBoardingContent(
      image: museum,
      title: "Jelajahi kategori yang memikat",
      description:
          "Telusuri berbagai kategori untuk menemukan ide sesuai minat Kamu!",
    ),
  ];
}
