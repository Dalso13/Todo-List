import 'package:flutter/material.dart';
import 'package:todo_list/main.dart';
import 'package:todo_list/todo.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Todo 작성'),
        actions: [
          IconButton(onPressed: () async {
            await todos.add(Todo(
              title: _textController.text,
              dateTime: DateTime.now().millisecondsSinceEpoch,
            ));

            // 화면이 잘 표시되는지 확인
            if(mounted){
              // 뒤로가기
              Navigator.pop(context);
            }

          }, icon: Icon(Icons.check))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: _textController,
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
