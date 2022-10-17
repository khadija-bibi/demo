import 'package:flutter/material.dart';
import 'package:task_11/pages/homepage.dart';
void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home(),

    );
  }
}
