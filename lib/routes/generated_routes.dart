import 'package:flutter/material.dart';
import 'package:to_do_lite/pages/add_to_do.dart';
import 'package:to_do_lite/pages/to_do_page.dart';
import 'package:to_do_lite/routes/constant_routes.dart';

class GeneratedRoutes {
  static Route<dynamic> generatedRoutes(RouteSettings settings) {
    switch (settings.name) {
      case todopage:
        return MaterialPageRoute(
          builder: (context) => const ToDoPage(),
        );
      case addtodopage:
        return MaterialPageRoute(
          builder: (context) => const AddToDoPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Text("Rute tidak tersedia"),
          ),
        );
    }
  }
}
