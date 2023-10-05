import 'package:flutter/material.dart';

class Helper{
  static double caculatorWidth(BuildContext context, double value){
    return  MediaQuery.of(context).size.width * value/ 375;
  }
  static double caculatorHeight(BuildContext context, double value){
    return  MediaQuery.of(context).size.height * value/ 812;
  }
}