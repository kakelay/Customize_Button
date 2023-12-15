import 'package:flutter/material.dart';

Widget customButtonLoading({
  required String text,
  required Function onPressed,
  bool colorButton = false,
  bool isLoading = false,
  TextStyle? textStyle,
  double borderRadius = 5,
  Color? backgroundColor, // New parameter for background color
}) {
  bool _outlineBtn = colorButton;
  bool _isLoading = isLoading;

  return GestureDetector(
    onTap: () => onPressed(),
    child: Container(
      height: 55.0,
      decoration: BoxDecoration(
        color: backgroundColor ??
            (_outlineBtn ? Colors.transparent : Colors.green),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        children: [
          Visibility(
            visible: !_isLoading,
            child: Center(
              child: Text(
                text,
                style: textStyle ??
                    const TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
          Visibility(
            visible: _isLoading,
            child: const Center(
              child: SizedBox(
                height: 30.0,
                width: 30.0,
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
