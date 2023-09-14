import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print('Clicked on Todo Item');
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.black12,
        leading: Icon(
          Icons.check_box,
          color: Colors.blue,
        ),
        title: Text(
          'Check mail',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
              onPressed: () {
                print('Clicked on delete icon');
              },
              icon: Icon(Icons.delete)),
        ),
      ),
    );
  }
}
