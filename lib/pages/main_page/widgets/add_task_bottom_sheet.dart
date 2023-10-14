import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_list_flutter/components/textfield/addtask_textformfield.dart';
import 'package:todo_list_flutter/gen/assets.gen.dart';
import 'package:todo_list_flutter/resources/app_color.dart';
import 'package:todo_list_flutter/resources/app_style.dart';

class AddTaskBottomSheet extends StatefulWidget {
  const AddTaskBottomSheet({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AddTaskBottomSheetState createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  bool isField1Focused = true;
  bool isField2Focused = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25.0)
          .copyWith(top: 25, bottom: 13.0),
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      width: double.infinity,
      height: 228.0,
      decoration: const BoxDecoration(
        color: AppColor.H363636,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Add Task',
              style: AppStyle.w87_20_400.copyWith(fontWeight: FontWeight.w700)),
          const SizedBox(height: 6.0),
          AddTaskTextformField(
            onTap: () => setState(() {
              isField1Focused = true;
              isField2Focused = false;
            }),
            hintText: 'Enter your task',
            horizontal: isField1Focused ? 16.0 : 0,
            borderSide: isField1Focused ? const BorderSide() : BorderSide.none,
          ),
          AddTaskTextformField(
            
            onTap: () => setState(() {
              isField1Focused = false;
              isField2Focused = true;
            }),
            hintText:
                isField2Focused ? 'Enter your description' : 'Description',
            horizontal: isField2Focused ? 16.0 : 0,
            borderSide: isField2Focused ? const BorderSide() : BorderSide.none,
          ),
          const SizedBox(height: 35.0),
          Row(
            children: [
              SvgPicture.asset(Assets.icons.timer),
              const SizedBox(width: 32.0),
              SvgPicture.asset(Assets.icons.tag),
              const SizedBox(width: 32.0),
              SvgPicture.asset(Assets.icons.flag),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: SvgPicture.asset(Assets.icons.send),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
