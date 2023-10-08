// ignore_for_file: use_build_context_synchronously

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_flutter/components/app_elevates_button_custom.dart';
import 'package:todo_list_flutter/components/app_ouline_row_custom_button.dart';
import 'package:todo_list_flutter/components/icon_button_custom.dart';
import 'package:todo_list_flutter/components/pass_text_form_field_custom.dart';
import 'package:todo_list_flutter/components/text_form_field_custom.dart';
import 'package:todo_list_flutter/firebase/firebase_auth_services.dart';
import 'package:todo_list_flutter/gen/assets.gen.dart';
import 'package:todo_list_flutter/pages/home_page/home_page.dart';
import 'package:todo_list_flutter/pages/signin_sinup/signin_page.dart';
import 'package:todo_list_flutter/resources/app_color.dart';
import 'package:todo_list_flutter/resources/app_style.dart';
import 'package:todo_list_flutter/resources/helper.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignupPage> {
  final FarebaseAuthServices _auth = FarebaseAuthServices();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _confirmpassController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passController.dispose();
    _confirmpassController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0).copyWith(
            top: MediaQuery.of(context).padding.top +
                Helper.caculatorHeight(context, 13.0),
            bottom: Helper.caculatorHeight(context, 20.0)),
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
            SizedBox(height: Helper.caculatorHeight(context, 16.0)),
            Text(
              'Register',
              style: AppStyle.w87_32_700
                  .copyWith(color: AppColor.HFFFFFF.withOpacity(0.87)),
            ),
            SizedBox(height: Helper.caculatorHeight(context, 23.0)),
            Text('Email', style: AppStyle.w87_16_400),
            SizedBox(height: Helper.caculatorHeight(context, 8.0)),
            TextFormFieldCustom(
              hintText: 'Enter your email',
              controller: _emailController,
            ),
            SizedBox(height: Helper.caculatorHeight(context, 25.0)),
            Text('Password', style: AppStyle.w87_16_400),
            SizedBox(height: Helper.caculatorHeight(context, 8.0)),
            PasswordTextFormFieldCustom(
              hintText: 'Enter your pasword',
              controller: _passController,
            ),
            SizedBox(height: Helper.caculatorHeight(context, 25.0)),
            Text('Confirm Password', style: AppStyle.w87_16_400),
            SizedBox(height: Helper.caculatorHeight(context, 8.0)),
            PasswordTextFormFieldCustom(
              hintText: 'Confirm password',
              controller: _confirmpassController,
            ),
            SizedBox(height: Helper.caculatorHeight(context, 40.0)),
            Hero(
              tag: 'RigisterTag',
              child: AppElevatedButtonCustom(
                  label: 'Register',
                  onpressed:_signUp,
                  backgroundColor: AppColor.primaryColor.withOpacity(
                      _emailController.text.isEmpty &&
                              _passController.text.isEmpty &&
                              _confirmpassController.text.isEmpty
                          ? 0.5
                          : 1),
                  foreground: AppColor.HFFFFFF.withOpacity(
                      _emailController.text.isEmpty &&
                              _passController.text.isEmpty
                          ? 0.5
                          : 1)),
            ),
            SizedBox(height: Helper.caculatorHeight(context, 32.0)),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    color: AppColor.H979797,
                    thickness: 1,
                    endIndent: 2.0,
                  ),
                ),
                Text(
                  'Or',
                  style: AppStyle.w_16_400.copyWith(color: AppColor.H979797),
                ),
                const Expanded(
                  child: Divider(
                    color: AppColor.H979797,
                    thickness: 1,
                    indent: 2.0,
                  ),
                )
              ],
            ),
            SizedBox(height: Helper.caculatorHeight(context, 34.0)),
            AppOutlineRowButtonCustom(
              label: 'Login with Google',
              icon: Assets.icons.googleIc,
              onpressed: () {},
            ),
            SizedBox(height: Helper.caculatorHeight(context, 17.0)),
            AppOutlineRowButtonCustom(
              label: 'Login with Google',
              icon: Assets.icons.appleIc,
              onpressed: () {},
            ),
            SizedBox(height: Helper.caculatorHeight(context, 46.0)),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'Already have an account?',
                        style: AppStyle.H979797_12_400),
                    TextSpan(
                        text: ' Login',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const SignInPage(),
                              ),
                            );
                          },
                        style: AppStyle.w87_16_400.copyWith(fontSize: 12.0)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _signUp() async {
    String email = _emailController.text.trim();
    String confirmPass = _confirmpassController.text.trim();
    User? user = await _auth.signUpWithEmailAndPassword(email, confirmPass);
    if (user != null) {
      print('thêm thành công');
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    }else{
      print('lỗi');
    }
  }
}
