import 'package:flutter/material.dart';

class AppColors {
  ///Colors
  static const Color appBarGrey = Color.fromRGBO(250, 250, 250, 1);
  static const Color bottomNavBarGrey = Color.fromRGBO(250, 249, 248, 1);
  static const Color dividerGray = Color.fromRGBO(234, 234, 234, 1);
  static const Color orange = Color.fromRGBO(254, 89, 0, 1);
  static const Color secondGray = Color.fromRGBO(116, 120, 142, 1);
  static const Color notificationRed = Color.fromRGBO(255, 31, 0, 1);
  static const Color textMain = Color.fromRGBO(51, 62, 99, 1);
  static const Color scaffoldWhite = Color.fromRGBO(255, 255, 255, 1);
  static const Color secondaryWhihe = Color.fromRGBO(244, 244, 244, 1);
  static const Color graphit = Color.fromRGBO(58, 64, 96, 1);

  ///Gradient
  static const LinearGradient blueAlternativa = LinearGradient(
    colors: [
      Color.fromRGBO(41, 136, 225, 1),
      Color.fromRGBO(37, 150, 215, 1),
    ],
  );

  static const LinearGradient watterGray = LinearGradient(
    colors: [
      Color.fromRGBO(60, 66, 98, 1),
      Color.fromRGBO(77, 84, 123, 1),
    ],
  );

  static const LinearGradient fireOrange = LinearGradient(
    colors: [
      Color.fromRGBO(223, 83, 4, 1),
      Color.fromRGBO(241, 94, 2, 1),
      Color.fromRGBO(251, 171, 2, 1),
    ],
  );

  ///Shaders
  static final Shader blueAlternativaShader = blueAlternativa.createShader(
    const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
  );

  ///Shadows
  static const BoxShadow mainShadow = BoxShadow(
    color: AppColors.secondaryWhihe,
    offset: Offset(0, 4),
    blurRadius: 20,
    spreadRadius: 0,
  );
}
