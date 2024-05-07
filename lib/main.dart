import 'package:flutter/material.dart';
import 'package:navigator/pages/first_page.dart';
import 'package:navigator/pages/second_page.dart';
import 'package:navigator/pages/todo_description.dart';
import 'package:navigator/pages/todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        // '/': (context) => FirstPage(),
        // '/second': (context) => SecondPage(),
        '/todo': (context) => TodoScreen(),
        '/todo/description': (context) => TodoDescriptionScreen(),
      },
      initialRoute: '/todo',
    );
  }
}


