import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_list_flutter/components/custom_appbar.dart';
import 'package:todo_list_flutter/gen/assets.gen.dart';
import 'package:todo_list_flutter/resources/app_color.dart';
import 'package:todo_list_flutter/resources/app_style.dart';
import 'package:todo_list_flutter/resources/helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: Helper.caculatorHeight(context, 75.0)),
        Center(
          child: SvgPicture.asset(Assets.images.listNull,
              width: Helper.caculatorWidth(context, 227.0)),
        ),
        SizedBox(height: Helper.caculatorHeight(context, 10.0)),
        Text('What do you want to do today?', style: AppStyle.w87_20_400),
        SizedBox(height: Helper.caculatorHeight(context, 10.0)),
        Text('Tap + to add your tasks', style: AppStyle.w87_16_400),
      ],
    );
  }
}
