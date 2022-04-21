import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moonknight/moonknight/consts.dart';

import 'moonknight/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white
          ),
        ),

        primarySwatch: Colors.blue,
      ),
      home:  MoonKnightScreen(),
    );
  }
}
