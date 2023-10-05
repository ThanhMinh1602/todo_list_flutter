import 'package:flutter/material.dart';
import 'package:todo_list_flutter/pages/intro_page/intro_page.dart';
import 'package:todo_list_flutter/resources/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
        useMaterial3: true,
      ),
      home:  const IntroPage(),
    );
  }
}

