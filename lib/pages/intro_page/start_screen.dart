import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:todo_list_flutter/components/app_elevates_button_custom.dart';

import 'package:todo_list_flutter/components/app_outline_button_custom.dart';
import 'package:todo_list_flutter/components/icon_button_custom.dart';
import 'package:todo_list_flutter/gen/assets.gen.dart';
import 'package:todo_list_flutter/pages/signin_sinup/signin_page.dart';
import 'package:todo_list_flutter/resources/app_color.dart';
import 'package:todo_list_flutter/resources/app_style.dart';
import 'package:todo_list_flutter/resources/helper.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0).copyWith(
            top: MediaQuery.of(context).padding.top +
                Helper.caculatorHeight(context, 13.0),
            bottom: Helper.caculatorHeight(context, 67.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButtonCustom.nobackground(
                icon: Assets.icons.backIc,
                onpressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            SizedBox(height: Helper.caculatorHeight(context, 58.0)),
            Text(
              'Welcome to UpTodo',
              style: AppStyle.w87_32_700.copyWith(
                color: AppColor.HFFFFFF.withOpacity(0.87),
              ),
            ),
            SizedBox(
              height: Helper.caculatorHeight(context, 26.0),
            ),
            Text(
              'Please login to your account or create new account to continue',
              style: AppStyle.w87_16_400.copyWith(
                color: AppColor.HFFFFFF.withOpacity(0.67),
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            AppElevatedButtonCustom(
                onpressed: () {
                  Navigator.of(context).push(
                    PageTransition(
                      child: const SignInPage(),
                      type: PageTransitionType.bottomToTop,
                    ),
                  );
                },
                label: 'LOGIN'),
            SizedBox(height: Helper.caculatorHeight(context, 28.0)),
            AppOutlineButtonCustom(onpressed: () {}, label: 'CREATE ACCOUNT'),
          ],
        ),
      ),
    );
  }
}
