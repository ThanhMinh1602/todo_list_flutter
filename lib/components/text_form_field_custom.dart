// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:todo_list_flutter/resources/app_color.dart';
import 'package:todo_list_flutter/resources/app_style.dart';

class TextFormFieldCustom extends StatelessWidget {
  const TextFormFieldCustom({
    Key? key,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
     this.controller,
  }) : super(key: key);
  final String hintText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:controller ,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      style: AppStyle.w_16_400,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppStyle.H535353_16_400,
        contentPadding: const EdgeInsets.all(12.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: AppColor.H979797, width: 0.8),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: AppColor.H979797, width: 0.8),
        ),
      ),
    );
  }
}
