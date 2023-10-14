import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_list_flutter/resources/app_color.dart';

class IconButtonCustom extends StatelessWidget {
  const IconButtonCustom.nobackground({
    super.key,
    required this.onpressed,
    this.padding,
    this.color,
    required this.icon,
  });

  const IconButtonCustom({
    super.key,
    required this.onpressed,
    this.padding = const EdgeInsets.all(4.0),
    this.color = AppColor.H1D1D1D,
    required this.icon,
  });

  final Function() onpressed;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
