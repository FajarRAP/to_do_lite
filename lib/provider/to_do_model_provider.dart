import 'package:flutter/material.dart';
import 'package:to_do_lite/models/to_do_model.dart';

class ToDoModelProvider extends ChangeNotifier {
  final List<ToDoModel> _list = [
    ToDoModel(tugas: "Tugas", tanggal: "Tanggal"),
  ];
  List<ToDoModel> get list => _list;
  void addList(ToDoModel toDoModel) {
    _list.add(toDoModel);
    notifyListeners();
  }
}
