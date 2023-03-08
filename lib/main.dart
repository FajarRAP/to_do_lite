import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_lite/pages/home_page.dart';
import 'package:to_do_lite/provider/to_do_model_provider.dart';
import 'package:to_do_lite/routes/generated_routes.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ToDoModelProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: GeneratedRoutes.generatedRoutes,
        home: HomePage(),
      ),
    );
  }
}
