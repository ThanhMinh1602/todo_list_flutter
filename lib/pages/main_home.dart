// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_list_flutter/components/appbar/custom_appbar.dart';
import 'package:todo_list_flutter/gen/assets.gen.dart';
import 'package:todo_list_flutter/pages/home_page/home_page.dart';
import 'package:todo_list_flutter/resources/app_color.dart';
import 'package:todo_list_flutter/resources/app_style.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: const AppBarCustom(),
      body: IndexedStack(
        index:
            _currentIndex, // Sử dụng _currentIndex để xác định màn hình hiển thị
        children: [
          const HomePage(),
          Container(
            color: const Color.fromARGB(255, 0, 158, 237),
          )
        ],
      ),
      floatingActionButton: InkWell(
        onTap: () {
          showAddTaskSheet(context);
        },
        child: const CircleAvatar(
          radius: 32.0,
          backgroundColor: AppColor.primaryColor,
          child: Icon(
            Icons.add,
            size: 30.0,
            color: AppColor.HFFFFFF,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 91.0,
        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 12.0),
        color: const Color(0xFF363636),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavItem(0, Icons.home, 'Index'),
            buildNavItem(1, Icons.calendar_today, 'Calendar'),
            Expanded(child: Container()), // Điều chỉnh Icon và Text ở đây
            buildNavItem(3, Icons.star, 'Focuse'),
            buildNavItem(4, Icons.person, 'Profile'),
          ],
        ),
      ),
    );
  }

  Future<dynamic> showAddTaskSheet(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 25.0)
              .copyWith(top: 25, bottom: 13.0),
          margin:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
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
                  style: AppStyle.w87_20_400
                      .copyWith(fontWeight: FontWeight.w700)),
              const SizedBox(height: 6.0),
              const SizedBox(height: 35.0),
              Row(
                children: [
                  SvgPicture.asset(Assets.icons.timer),
                  const SizedBox(width: 32.0),
                  SvgPicture.asset(Assets.icons.tag),
                  const SizedBox(width: 32.0),
                  SvgPicture.asset(Assets.icons.flag),
                  const Spacer(),
                  SvgPicture.asset(Assets.icons.send),
                ],
              ),
              // const Offstage(child: TextField())
            ],
          ),
        );
      },
    );
  }

  Widget buildNavItem(int index, IconData icon, String label) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _currentIndex = index;
          });
        },
        child: Column(
          children: [
            Icon(icon,
                color: _currentIndex == index ? Colors.white : Colors.grey),
            Text(
              label,
              style: TextStyle(
                color: _currentIndex == index ? Colors.white : Colors.grey,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
