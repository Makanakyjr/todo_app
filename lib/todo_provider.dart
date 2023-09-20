import 'package:flutter/material.dart';
import 'package:todo_app/model/todo.dart';

class TodoProvider extends ChangeNotifier {
  List<ToDo> todoList = [];

  addTodoItem(Map<String, dynamic> item) {
    todoList.add(
      ToDo(
        todoText: item["title"],
        isDone: false,
      ),
    );
    notifyListeners();
  }

  checkTodo(int index, bool newValue) {
    todoList[index].isDone = newValue;
    notifyListeners();
  }

  deleteTodo(int index) {
    todoList.removeAt(index);
    notifyListeners();
  }

  editTodo(int index, String value) {
    todoList[index].todoText = value;
    notifyListeners();
  }
}
