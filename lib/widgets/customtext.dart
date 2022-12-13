import 'dart:ui';

import 'package:flutter/cupertino.dart';

Widget CustomText({
  required String text,
  required double size,
  required FontWeight weight,



}){
  return Text(text,style: TextStyle(
    fontSize: size,
    fontWeight: weight
  ),);
}