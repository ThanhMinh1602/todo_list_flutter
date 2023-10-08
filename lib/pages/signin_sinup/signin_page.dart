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
import 'package:todo_list_flutter/pages/signin_sinup/sigup_page.dart';
import 'package:todo_list_flutter/resources/app_color.dart';
import 'package:todo_list_flutter/resources/app_style.dart';
import 'package:todo_list_flutter/resources/helper.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final FarebaseAuthServices _auth = FarebaseAuthServices();
  String? _showEmailErr;
  String? _showPassErr;
  bool _userInvalid = false;
  bool _passInvalid = false;
  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passController.dispose();
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
            SizedBox(height: Helper.caculatorHeight(context, 41.0)),
            Text(
              'Login',
              style: AppStyle.w87_32_700
                  .copyWith(color: AppColor.HFFFFFF.withOpacity(0.87)),
            ),
            SizedBox(height: Helper.caculatorHeight(context, 53.0)),
            Text('Email', style: AppStyle.w87_16_400),
            SizedBox(height: Helper.caculatorHeight(context, 8.0)),
            TextFormFieldCustom(
              hintText: 'Enter your email',
              controller: _emailController,
              errorText: _showEmailErr,
              validator: (p0) {
                _showEmailErr = p0;
              },
            ),
            SizedBox(height: Helper.caculatorHeight(context, 25.0)),
            Text('Password', style: AppStyle.w87_16_400),
            SizedBox(height: Helper.caculatorHeight(context, 8.0)),
            PasswordTextFormFieldCustom(
              hintText: 'Enter your pasword',
              controller: _passController,
              // ignore: unnecessary_null_comparison
              errorText: _passController == null ? _showPassErr : null,
            ),
            SizedBox(height: Helper.caculatorHeight(context, 69.0)),
            Hero(
              tag: 'LoginTag',
              child: AppElevatedButtonCustom(
                  label: 'Login',
                  onpressed: _signIn,
                  backgroundColor: AppColor.primaryColor.withOpacity(
                      _emailController.text.isEmpty &&
                              _passController.text.isEmpty
                          ? 0.5
                          : 1),
                  foreground: AppColor.HFFFFFF.withOpacity(
                      _emailController.text.isEmpty &&
                              _passController.text.isEmpty
                          ? 0.5
                          : 1)),
            ),
            SizedBox(height: Helper.caculatorHeight(context, 45.0)),
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
            SizedBox(height: Helper.caculatorHeight(context, 39.0)),
            AppOutlineRowButtonCustom(
              label: 'Login with Google',
              icon: Assets.icons.googleIc,
              onpressed: () {},
            ),
            SizedBox(height: Helper.caculatorHeight(context, 20.0)),
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
                        text: 'Don’t have an account?',
                        style: AppStyle.H979797_12_400),
                    TextSpan(
                        text: ' Register',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () =>
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SignupPage(),
                              )),
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

  void _signIn() async {
    String email = _emailController.text.trim();
    String password = _passController.text.trim();
    setState(() {
      if (email.isEmpty) {
        _showEmailErr = 'Vui lòng không bỏ trống';
      } else if (!email.contains("@")) {
        _showEmailErr = 'Vui lòng nhập đúng định dạng';
      } else if (email.isNotEmpty) {
        _showEmailErr = null;
      }
      if (password.isEmpty) {
        _showPassErr = 'Vui lòng không bỏ trống';
      }
    });

    //   User? user = await _auth.signInWithEmailAndPassword(email, password);
    //   if (user != null) {
    //     Navigator.of(context).push(
    //       MaterialPageRoute(
    //         builder: (context) => const HomePage(),
    //       ),
    //     );
    //   } else {
    //     // ignore: use_build_context_synchronously
    //     showDialog(
    //       context: context,
    //       builder: (context) {
    //         return const AlertDialog(
    //           content: Text('Sai tên đăng nhập hoặc mật khẩu'),
    //         );
    //       },
    //     );
    //   }
    // }
  }
}
