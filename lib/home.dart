import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/add_todo.dart';
import 'package:todo_app/widgets/todo_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 88, 149, 240),
        elevation: 0,
        title: const Row(
          children: [
            Center(
              child: Text(
                'Create Your Todo',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: FutureBuilder(
          future: FirebaseFirestore.instance.collection("Todos").get(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: Text(
                  'No todos',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              );
            }
            return Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 20,
                    ),
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(243, 246, 246, 246),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 20,
                          ),
                          prefixIconConstraints:
                              BoxConstraints(maxHeight: 80, minWidth: 25),
                          border: InputBorder.none,
                          hintText: "Search",
                        ),
                      ),
                    ),
                  ),
                ),
                const Flexible(
                  flex: 6,
                  child: ToDoItem(),
                )
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 88, 149, 240),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddTodo(),
            ),
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
