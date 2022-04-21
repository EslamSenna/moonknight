import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../consts.dart';

class DefaultIcon extends StatelessWidget {
  const DefaultIcon({Key? key, this.icon, this.color, this.iconColor}) : super(key: key);
  final icon,color,iconColor;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.black
            ),
            shape: BoxShape.circle,
            color: color),
        child: Center(
            child: FaIcon(icon,
                color: iconColor,
                size: 16)),
      ),
    );
  }
}



class Types extends StatelessWidget {
   Types({Key? key}) : super(key: key);
  var titles =[
    'Fantasy',
    'Super Hero',
    'Action',
    'Adventure',
  ];

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(4, (index) => Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            color: appColor,
            borderRadius: BorderRadius.circular(10)
        ),
        height: 35,
        width: 80,
        child: Center(child: textThemes(context, text: titles[index], size: 10)),

      )),
    );
  }
}

class Watching extends StatelessWidget {
  const Watching({Key? key, this.title, this.subtitle, this.logo, this.icon}) : super(key: key);
  final title,subtitle,logo,icon;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(logo,height: 40,width: 40,),
        SizedBox(width: 8,),
        Column(
          children: [
            textThemes(context, text: title, size: 12),
            SizedBox(height: 8,),
            Row(
              children: [
                icon,
                textThemes(context, text: subtitle, size: 10),
              ],
            ),
          ],
        )
      ],
    );
  }
}



