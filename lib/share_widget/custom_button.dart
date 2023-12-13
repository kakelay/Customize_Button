import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Widget customButton({
  required VoidCallback onPressed,
  required String buttonText,
  Color buttonColor = Colors.blue,
  Color textColor = Colors.white,
  EdgeInsetsGeometry padding = const EdgeInsets.all(10),
  double borderRadius = 5,
  TextStyle? textStyle,
}) {
  BuildContext? context = navigatorKey.currentContext;
  double screenWidth = context != null ? MediaQuery.of(context).size.width : 0;

  return Container(
    width: screenWidth * 0.8,
    height: 70,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor,
        backgroundColor: buttonColor,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Text(
        buttonText,
        style: textStyle,
      ),
    ),
  );
}
