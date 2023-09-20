import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/todo_provider.dart';

class EditTodo extends StatelessWidget {
  EditTodo({super.key, required this.index});
  final TextEditingController editController = TextEditingController();
  final int index;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodoProvider>(context, listen: false);
    editController.text =
        Provider.of<TodoProvider>(context).todoList[index].todoText!;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              const Text('Edit Todo'),
              const Spacer(),
              IconButton(
                onPressed: () {
                  provider.editTodo(index, editController.text);
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.check),
                iconSize: 30,
              ),
            ],
          ),
          TextField(
            controller: editController,
            maxLines: null,
          ),
        ],
      ),
    );
  }
}
