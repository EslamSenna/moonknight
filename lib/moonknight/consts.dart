import 'package:flutter/material.dart';

TextStyle? textTheme(context) => Theme.of(context).textTheme.bodyText1;

Widget textThemes(context,{height,color,fontWeight,required text,required double size})=> Text(text,style: textTheme(context)!.copyWith(
  fontSize: size,
  fontWeight: fontWeight,
    color: color,
  height: height,
),);

const appColor = Color(0xff0c1525);