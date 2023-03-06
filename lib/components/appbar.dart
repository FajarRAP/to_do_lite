import 'package:flutter/material.dart';

AppBar appBarAinx(Widget x) {
  return AppBar(
    title: const Text(
      "Aplikasi To Do",
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    leading: x,
  );
}
