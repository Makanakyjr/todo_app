import 'package:flutter/material.dart';
import 'package:todo_app/home.dart';
import 'package:todo_app/model/todo.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Checkbox(
            value: todoList[index].isDone,
            onChanged: (bool? newValue) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
              todoList[index].isDone = newValue!;
            },
          ),
          title: Text("${todoList[index].todoText}"),
          trailing: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
              todoList.removeAt(index);
            },
            icon: const Icon(
              Icons.delete,
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: 15,
        ),
        itemCount: todoList.length,
      ),
    );
  }
}
