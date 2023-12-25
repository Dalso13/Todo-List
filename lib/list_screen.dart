import 'package:flutter/material.dart';
import 'package:todo_list/create_screen.dart';
import 'package:todo_list/todo.dart';
import 'package:todo_list/todo_item.dart';

import 'main.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo 리스트'),
      ),
      body: ListView(
        children: todos.values.map((e) {
          return TodoItem(
            todo: e,
            onTap: (Todo todo) async {
              todo.isDone = !todo.isDone;
              //db에 저장
              await todo.save();

              setState(() {

              });
            },
            onDelete: (Todo todo) async{
              // db에서 제거
              await todo.delete();

              setState(() {

              });
            },
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreateScreen()),
          );

          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
