import 'package:flutter/material.dart';
import 'package:todo_list_flutter/components/icon_button_custom.dart';
import 'package:todo_list_flutter/gen/assets.gen.dart';
import 'package:todo_list_flutter/models/user_model.dart';
import 'package:todo_list_flutter/resources/app_color.dart';
import 'package:todo_list_flutter/resources/app_style.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0)
          .copyWith(top: MediaQuery.of(context).padding.top + 13.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            size: 24.0,
            color: AppColor.HFFFFFF,
          ),
          Text(
            "Index",
            style: AppStyle.w87_20_400,
          ),
          CircleAvatar(
            backgroundImage:NetworkImage(userModel.avt ?? '') ,
            radius: 21.0,
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 42.0);
}
