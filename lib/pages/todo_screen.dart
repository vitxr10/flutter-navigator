import 'package:flutter/material.dart';
import 'package:navigator/todo.dart';

class TodoScreen extends StatelessWidget {
 TodoScreen({super.key});

  final todos = List.generate(
    5,
    (i) => Todo(
      "Todo $i",
      "a descrição nro $i"
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Todo list',
          style: TextStyle(color: Colors.white),
          ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.of(context).pushNamed('/todo/description', arguments: todos[index]);
            },
          );
        },
      ),
    );
  }
}