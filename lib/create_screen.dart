import 'package:flutter/material.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Todo 작성'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.check))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintStyle: TextStyle(color: Colors.grey[900]),
            hintText: '할일을 입력하세요',
            filled: true,
            fillColor: Colors.white12
          ),
        ),
      ),
    );
  }
}
