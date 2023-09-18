class ToDo {
  String? todoText;
  bool? isDone;

  ToDo({
    required this.todoText,
    this.isDone,
  });
}

List<ToDo> todoList = [];

addTodoItem(Map<String, dynamic> item) {
  todoList.add(
    ToDo(
      todoText: item["title"],
      isDone: false,
    ),
  );
}
