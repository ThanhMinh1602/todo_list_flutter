import 'package:flutter/material.dart';
import 'package:todo_list_flutter/components/icon_button_custom.dart';
import 'package:todo_list_flutter/components/pass_text_form_field_custom.dart';
import 'package:todo_list_flutter/components/text_form_field_custom.dart';
import 'package:todo_list_flutter/gen/assets.gen.dart';
import 'package:todo_list_flutter/resources/app_color.dart';
import 'package:todo_list_flutter/resources/app_style.dart';
import 'package:todo_list_flutter/resources/helper.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0).copyWith(
            top: MediaQuery.of(context).padding.top +
                Helper.caculatorHeight(context, 13.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButtonCustom.nobackground(
                onpressed: () {
                  Navigator.of(context).pop();
                },
                icon: Assets.icons.backIc,
              ),
            ),
            const SizedBox(height: 41.0),
            Text(
              'Login',
              style: AppStyle.w87_32_700
                  .copyWith(color: AppColor.HFFFFFF.withOpacity(0.87)),
            ),
            const SizedBox(height: 53.0),
            Text('Username', style: AppStyle.w87_16_400),
            const SizedBox(height: 8.0),
            const TextFormFieldCustom(hintText: 'Enter your Username'),
            const SizedBox(height: 25.0),
            Text('Password', style: AppStyle.w87_16_400),
            const SizedBox(height: 8.0),
            const PasswordTextFormFieldCustom(hintText: 'Enter your pasword'),
            const SizedBox(height: 69.0),
          ],
        ),
      ),
    );
  }
}
