import 'package:flutter/material.dart';
import 'package:videomaker/model/color.dart';

class TextStyleFile {
  static TextStyle welcomeText = TextStyle(
      fontSize: 40, fontWeight: FontWeight.bold, color: ColorFile.textColor);
  static TextStyle welcomePageText = TextStyle(
      fontWeight: FontWeight.normal, fontSize: 15, color: ColorFile.textColor);
  static TextStyle elevatedButtonText = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.normal,
      color: ColorFile.elevatedTextColor);
  static TextStyle loginPageTitle = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 30, color: ColorFile.textColor);
  static TextStyle loginPageText = TextStyle(
      fontWeight: FontWeight.normal, fontSize: 17, color: ColorFile.textColor);
  static TextStyle signUpPageTitle = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 35, color: ColorFile.textColor);
  static TextStyle signUpPageText = TextStyle(
      fontWeight: FontWeight.normal, fontSize: 17, color: ColorFile.textColor);
  static TextStyle phoneVerificationPageTitle = TextStyle(
      fontWeight: FontWeight.w100, fontSize: 25, color: ColorFile.textColor);
  static TextStyle phoneVerificationPageText = TextStyle(
      fontWeight: FontWeight.normal, fontSize: 17, color: ColorFile.textColor);
  static TextStyle otpVerificationPageTitle = TextStyle(
    fontWeight: FontWeight.w700,fontSize: 25,color: ColorFile.textColor
  );
  static TextStyle otpVerificationPageText = TextStyle(
      fontWeight: FontWeight.normal, fontSize: 17, color: ColorFile.textColor);
  static TextStyle homePageTitle = TextStyle(
      fontWeight: FontWeight.w500,fontSize: 25,color: ColorFile.textColor
  );
static TextStyle searchPage = TextStyle(
    fontWeight: FontWeight.w400,fontSize: 20,color: ColorFile.textColor
);
}
