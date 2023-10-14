import 'package:flutter/material.dart';
import 'package:todo_list_flutter/resources/app_color.dart';
import 'package:todo_list_flutter/resources/app_style.dart';

class AppDialog {
  AppDialog._();
  static void loginDialog(BuildContext context,  {required String title,required String content}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            // 'Wrong login information',
            title,
            style: AppStyle.w_16_400,
          ),
          backgroundColor: AppColor.backgroundColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          content: Text(
            content,
            style: AppStyle.H979797_12_400.copyWith(fontSize: 14.0),
          ),
          actionsPadding:
              const EdgeInsets.symmetric(horizontal: 6.9).copyWith(bottom: 6.9),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  'OK',
                  style: AppStyle.w_16_400.copyWith(color: AppColor.blue),
                ))
          ],
        );
      },
    );
  }
}
