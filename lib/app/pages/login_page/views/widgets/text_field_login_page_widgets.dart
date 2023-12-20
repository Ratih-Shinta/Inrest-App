import 'package:flutter/material.dart';
import 'package:inrest_app/themes/color_themes.dart';

class TextFieldLoginPageWidget extends StatelessWidget {
  const TextFieldLoginPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: textfiledColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(10.0), // Set your desired border radius
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 1.5,
          ),
        ),
      ),
      cursorColor: secondaryColor,
    );
  }
}
