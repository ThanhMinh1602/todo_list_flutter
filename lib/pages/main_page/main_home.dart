// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:todo_list_flutter/components/appbar/custom_appbar.dart';
import 'package:todo_list_flutter/pages/home_page/home_page.dart';
import 'package:todo_list_flutter/pages/main_page/widgets/add_task_bottom_sheet.dart';
import 'package:todo_list_flutter/resources/app_color.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  bool? isField1Focused;
  bool? isField2Focused;
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
            Expanded(child: Container()),
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
        return StatefulBuilder(builder: (context, setState) {
          return const AddTaskBottomSheet();
        });
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
