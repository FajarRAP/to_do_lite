import 'package:flutter/material.dart';
import 'package:to_do_lite/pages/home_page.dart';
import 'package:to_do_lite/pages/to_do_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: ToDoPage(),
    );
  }
}
