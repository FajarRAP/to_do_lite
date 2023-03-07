import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:to_do_lite/components/appbar.dart';
import 'package:to_do_lite/models/to_do_model.dart';
import 'package:to_do_lite/provider/to_do_model_provider.dart';

class AddToDoPage extends StatelessWidget {
  const AddToDoPage({super.key});
  @override
  Widget build(BuildContext context) {
    final toDoProvider = Provider.of<ToDoModelProvider>(context);

    String tugas = "Belum di isi";
    String tanggal = "Belum di isi";
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
      body: ListView(
        children: [
          Image.asset("images/addtodo.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Isi to list di sini",
                suffixIcon: const Icon(Icons.assignment_add),
              ),
              autofocus: false,
              onChanged: (value) {
                tugas = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2002),
                      lastDate: DateTime(2024),
                    ).then((value) {
                      tanggal = DateFormat("E, d-M-y").format(value!);
                    });
                  },
                  child: Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadiusDirectional.circular(25),
                    ),
                    child: const Center(
                      child: Text(
                        "Pilih tanggalnya\ndi sini",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    toDoProvider.addList(
                      ToDoModel(tugas: tugas, tanggal: tanggal),
                    );
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadiusDirectional.circular(25),
                    ),
                    child: const Center(
                      child: Text(
                        "Selesai",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
