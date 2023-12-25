import 'package:flutter/material.dart';
import 'package:todo_list/create_screen.dart';
import 'package:todo_list/todo.dart';

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
          return ListTile(
            title:Text(e.title),
            subtitle: Text('${e.dateTime}')
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
              context,
              MaterialPageRoute(builder:
              (context) => const CreateScreen()),
          );

          setState(() {

          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
