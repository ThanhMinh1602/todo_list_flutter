// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:todo_list_flutter/components/app_elevates_button_custom.dart';
import 'package:todo_list_flutter/components/page_indicator.dart';
import 'package:todo_list_flutter/models/intro_model.dart';
import 'package:todo_list_flutter/pages/intro_page/start_screen.dart';
import 'package:todo_list_flutter/resources/app_color.dart';
import 'package:todo_list_flutter/resources/app_style.dart';

class OnboadingPage extends StatefulWidget {
  OnboadingPage({super.key});
  int curentPage = 0;
  @override
  State<OnboadingPage> createState() => _OnboadingPageState();
}

class _OnboadingPageState extends State<OnboadingPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    const height = 812;

    final PageController pageController = PageController();

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 24.0).copyWith(top: 14.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      PageTransition(
                        child: const StartScreen(),
                        type: PageTransitionType.rightToLeft,
                      ),
                    );
                  },
                  child: Text(
                    'SKIP',
                    style: AppStyle.w87_16_400.copyWith(
                      color: AppColor.HFFFFFF.withOpacity(0.44),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 2.0 / height),
              //page intro image
              SizedBox(
                height: screenHeight * 278 / height,
                child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      widget.curentPage = value;
                    });
                  },
                  itemCount: listIntros.length,
                  itemBuilder: (context, index) {
                    return SvgPicture.asset(listIntros[index].image ?? '');
                  },
                ),
              ),
              SizedBox(height: screenHeight * 51.22 / height),
              //indicator
              PageIndicator(
                curentPage: widget.curentPage,
                itemCount: listIntros.length,
              ),
              SizedBox(height: screenHeight * 50 / height),
              Text(
                listIntros[widget.curentPage].title ?? '-:-',
                style: AppStyle.w87_32_700.copyWith(
                  color: AppColor.HFFFFFF.withOpacity(0.87),
                ),
              ),
              SizedBox(height: screenHeight * 42 / height),
              Text(
                listIntros[widget.curentPage].subTitle ?? '-:-',
                style: AppStyle.w87_16_400.copyWith(
                  color: AppColor.HFFFFFF.withOpacity(0.87),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenHeight * 107 / height),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppElevatedButtonCustom.small(
                    label: 'BACK',
                    backgroundColor: Colors.transparent,
                    foreground: AppColor.HFFFFFF.withOpacity(0.44),
                    onpressed: () {
                      pageController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.linear,
                      );
                    },
                  ),
                  AppElevatedButtonCustom.small(
                    label: widget.curentPage == 2 ? 'GET STARTED' : 'NEXT',
                    onpressed: () {
                      if (widget.curentPage == 2) {
                        Navigator.of(context).push(
                          PageTransition(
                            child: const StartScreen(),
                            type: PageTransitionType.rightToLeft,
                          ),
                        );
                      }
                      setState(() {
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.linear);
                      });
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
