// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:todo_list_flutter/resources/app_color.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    Key? key,
    required this.itemCount,
    required this.curentPage,
  }) : super(key: key);

  final int itemCount;
  final int curentPage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 94.83,
        height: 4,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return Container(
              width: 26.28,
              height: 4.0,
              decoration: BoxDecoration(
                color:
                    curentPage == index ? AppColor.HFFFFFF : AppColor.HAFAFAF,
                borderRadius: BorderRadius.circular(56.0),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 8.0),
        ),
      ),
    );
  }
}
