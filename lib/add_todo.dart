import 'package:flutter/material.dart';
import 'package:todo_app/home.dart';
import 'package:todo_app/model/todo.dart';

class AddTodo extends StatelessWidget {
  AddTodo({super.key});
  final TextEditingController titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        // leading: const BackButton(
        //   color: Colors.black,
        // ),
        title: const Text(
          'New Todo',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Map<String, dynamic> item = {
                'title': titleController.text,
              };
              addTodoItem(item);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
            icon: const Icon(
              Icons.add,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: titleController,
          decoration: InputDecoration(
            hintText: "Type Here",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
