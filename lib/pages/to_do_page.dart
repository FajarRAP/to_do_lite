import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_lite/components/appbar.dart';
import 'package:to_do_lite/models/to_do_model.dart';
import 'package:to_do_lite/provider/to_do_model_provider.dart';
import 'package:to_do_lite/routes/constant_routes.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});
  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  @override
  Widget build(BuildContext context) {
    final toDoProvider = Provider.of<ToDoModelProvider>(context);
    final getToDo = toDoProvider.list;
    return Scaffold(
      appBar: appBarAinx(
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          color: Colors.blue,
        ),
      ),
      body: Column(
        children: getToDo.map((e) => ListToDoPage(toDoModel: e)).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(addtodopage);
        },
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}

class ListToDoPage extends StatefulWidget {
  final ToDoModel toDoModel;
  const ListToDoPage({super.key, required this.toDoModel});

  @override
  State<ListToDoPage> createState() => _ListToDoPageState();
}

class _ListToDoPageState extends State<ListToDoPage> {
  bool isCheck = false;

  bool isStar = false;

  Icon iconBintangIsi = const Icon(
    Icons.star,
    size: 30,
  );

  Icon iconBintangKosong = const Icon(
    Icons.star_border,
    size: 30,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.blue[200],
          boxShadow: const [
            BoxShadow(
              blurRadius: 2,
              offset: Offset(5, 5),
              color: Colors.grey,
            ),
          ],
        ),
        child: Row(
          children: [
            Checkbox(
              value: isCheck,
              onChanged: (value) {
                setState(() {
                  isCheck = !isCheck;
                });
              },
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.toDoModel.tugas,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.toDoModel.tanggal,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Expanded(
              child: SizedBox(),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isStar = !isStar;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: (isStar) ? iconBintangIsi : iconBintangKosong,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
