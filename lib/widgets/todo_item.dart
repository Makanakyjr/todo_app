import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/home.dart';
import 'package:todo_app/todo_provider.dart';
import 'package:todo_app/widgets/edit_todo.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodoProvider>(context);
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Checkbox(
            value: provider.todoList[index].isDone,
            onChanged: (bool? newValue) {
              provider.checkTodo(index, newValue!);
            },
          ),
          title: Text("${provider.todoList[index].todoText}"),
          trailing: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
              provider.todoList.removeAt(index);
            },
            icon: const Icon(
              Icons.delete,
            ),
          ),
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return EditTodo(
                  index: index,
                );
              },
            );
          },
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: 15,
        ),
        itemCount: provider.todoList.length,
      ),
    );
  }
}
