import 'package:flutter/material.dart';

LinearGradient GradientDec(List<Color> arr){
  return LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [arr[0], arr[1]]
  );
}

Shader textGradient(List<Color> arr){
  return LinearGradient(colors: arr).createShader(const Rect.fromLTWH(0, 0, 200, 70));
}