import 'package:flutter/material.dart';
import 'package:todo_list_flutter/resources/app_color.dart';

class AppStyle {
  static TextStyle w_40_700 = const TextStyle(
      fontSize: 40, fontWeight: FontWeight.w700, color: AppColor.HFFFFFF);
  static TextStyle w87_40_700 = TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w700,
      color: AppColor.HFFFFFF.withOpacity(0.87));
  static TextStyle w87_16_400 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColor.HFFFFFF.withOpacity(0.87));
  static TextStyle w87_20_400 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: AppColor.HFFFFFF.withOpacity(0.87));

  static TextStyle w_16_400 = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w400, color: AppColor.HFFFFFF);

  static TextStyle w87_32_700 = TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      color: AppColor.HFFFFFF.withOpacity(0.87));

  static TextStyle H535353_16_400 = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w400, color: AppColor.H535353);
  static TextStyle H979797_12_400 = const TextStyle(
      fontSize: 12, fontWeight: FontWeight.w400, color: AppColor.H979797);
}
