// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Text1 extends StatelessWidget {
   Text1({super.key, required this.content,required this.color,required this.font_size,required this.font_weight});

  String content ;
  Color color;
  double font_size;
  FontWeight font_weight;

  @override
  Widget build(BuildContext context) {
    return Text(content,style: TextStyle(
      color: color,
      fontSize: font_size,
      fontWeight: font_weight,
    ),);
  }
}