// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:todo_list_flutter/resources/app_style.dart';

class AddTaskTextformField extends StatelessWidget {
  const AddTaskTextformField({
    Key? key,
    required this.borderSide,
    this.onTap,
    required this.horizontal,
    required this.hintText,
    this.controller,
  }) : super(key: key);
  final BorderSide borderSide;
  final Function()? onTap;
  final double horizontal;
  final String hintText;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTap: onTap,
      style: AppStyle.w87_16_400.copyWith(fontSize: 18.0),
      autovalidateMode: AutovalidateMode.disabled,
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(vertical: 8.0, horizontal: horizontal),
        hintText: hintText,
        hintStyle: AppStyle.HAFAFAF_18_400,
        border: OutlineInputBorder(
          borderSide: borderSide,
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
    );
  }
}
