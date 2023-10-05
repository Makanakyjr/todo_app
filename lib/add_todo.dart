import 'package:flutter/material.dart';
import 'package:provider/provider.dart';   
import 'package:todo_app/todo_provider.dart';

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
              Provider.of<TodoProvider>(context, listen: false)
                  .addTodoItem(item);
              Navigator.pop(context);
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
