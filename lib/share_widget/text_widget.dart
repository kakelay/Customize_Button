import 'package:flutter/material.dart';

Widget TextWidget(
  String text, {
  Color? color,
  double? size,
  FontWeight? weight,
  FontStyle? fontStyle,
  double? letterSpacing,
  TextAlign? textAlign,
  TextDecoration? decoration,
  Color? decorationColor,
  String? fontFamily,
  double? wordSpacing,
  TextDecorationStyle? decorationStyle,
  Color? selectColor,
  bool? softWrap, // Added softWrap parameter
}) {
  return Text(
    text,
    style: TextStyle(
      color: color ?? Colors.black,
      fontSize: size ?? 16.0,
      fontWeight: weight ?? FontWeight.normal,
      fontStyle: fontStyle ?? FontStyle.normal,
      letterSpacing: letterSpacing ?? 0.0,
      decoration: decoration ?? TextDecoration.none,
      decorationColor: decorationColor,
      fontFamily: fontFamily,
      wordSpacing: wordSpacing,
      decorationStyle: decorationStyle,
    ),
    textAlign: textAlign ?? TextAlign.center,
    selectionColor: selectColor ?? Colors.red,
    softWrap: softWrap ?? true,
  );
}
