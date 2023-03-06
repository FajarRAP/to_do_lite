import 'package:flutter/material.dart';
import 'package:to_do_lite/components/appbar.dart';

class ToDoPage extends StatelessWidget {
  const ToDoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarAinx(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
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
                    value: false,
                    onChanged: (value) {},
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "To Do 1",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "6-3-2023",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(
                      Icons.star_border,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}
