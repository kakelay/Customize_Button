import 'package:customize_button/share_widget/custom_button.dart';
import 'package:flutter/material.dart';

Widget bottomNavigationCustom() {
  return Container(
    padding: const EdgeInsets.symmetric(
      vertical: 50,
      horizontal: 5,
    ),
    decoration: const BoxDecoration(),
    child: customButton(
      buttonColor: Colors.orangeAccent,
      onPressed: () {},
      buttonText: 'Click me',
      textStyle: const TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
    ),
  );
}
