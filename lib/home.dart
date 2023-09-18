import 'package:flutter/material.dart';
import 'package:todo_app/add_todo.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/widgets/todo_item.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(131, 239, 242, 243),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/yak.jpg')),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 239, 228, 228),
                    borderRadius: BorderRadius.circular(20)),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 20,
                    ),
                    prefixIconConstraints:
                        BoxConstraints(maxHeight: 20, minWidth: 25),
                    border: InputBorder.none,
                    hintText: "Search",
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 6,
            child: Container(
              child: const ToDoItem(),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddTodo(),
            ),
          );

          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => AddTodo(),
          //     ),
          //   );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
