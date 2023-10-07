// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:todo_list_flutter/resources/app_color.dart';
import 'package:todo_list_flutter/resources/app_style.dart';

class AppElevatedButtonCustom extends StatelessWidget {
  const AppElevatedButtonCustom.small({
    super.key,
    required this.onpressed,
    required this.label,
    this.alignment,
    this.backgroundColor = AppColor.primaryColor,
    this.foreground = AppColor.HFFFFFF,
  });

  const AppElevatedButtonCustom({
    Key? key,
    required this.onpressed,
    required this.label,
    this.alignment = Alignment.center,
    this.backgroundColor = AppColor.primaryColor,
    this.foreground = AppColor.HFFFFFF,
  }) : super(key: key);

  final Color? backgroundColor;
  final Color? foreground;
  final Function() onpressed;
  final String label;
  final AlignmentGeometry? alignment;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        alignment:alignment,
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 12.0,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Text(
          label,
          style: AppStyle.w87_16_400.copyWith(color: foreground),
        ),
      ),
    );
  }
}
