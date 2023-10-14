// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_list_flutter/resources/app_color.dart';
import 'package:todo_list_flutter/resources/app_style.dart';

class AppOutlineRowButtonCustom extends StatelessWidget {
  const AppOutlineRowButtonCustom.small({
    super.key,
    this.backgroundColor = Colors.transparent,
    this.foreground = AppColor.primaryColor,
    required this.onpressed,
    required this.label,
    AlignmentGeometry? alignmentGeometry,
    required this.icon,
  }) : alignment = Alignment.center;

  const AppOutlineRowButtonCustom({
    Key? key,
    this.backgroundColor = Colors.transparent,
    this.foreground = AppColor.primaryColor,
    required this.onpressed,
    required this.label,
    required this.icon,
    this.alignment = Alignment.center,
  }) : super(key: key);

  final Color backgroundColor;
  final Color foreground;
  final Function() onpressed;
  final String label;
  final String icon;
  final AlignmentGeometry? alignment;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: 24.00,
          vertical: 12.0,
        ),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(color: foreground, width: 2.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon),
            const SizedBox(width: 10.100),
            Text(
              label,
              style: AppStyle.w87_16_400,
            ),
          ],
        ),
      ),
    );
  }
}
