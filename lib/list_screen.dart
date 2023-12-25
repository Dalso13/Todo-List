import 'package:flutter/material.dart';
import 'package:todo_list/create_screen.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo 리스트'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('title 1'),
            subtitle: Text('subTitle 1'),
          ),
          ListTile(
            title: Text('title 2'),
            subtitle: Text('subTitle 2'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: 
              (context) => const CreateScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
