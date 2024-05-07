import 'package:flutter/material.dart';
import 'package:navigator/todo.dart';

class TodoDescriptionScreen extends StatelessWidget {
  const TodoDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
        final argument = ModalRoute.of(context)!.settings.arguments as Todo;
        return Scaffold(
      appBar: AppBar(title: Text(argument.title)),
      body: Center(
        child: Text(argument.description),
      ),
    );
  }
}