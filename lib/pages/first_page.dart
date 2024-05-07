import 'package:flutter/material.dart';
import 'package:navigator/mensagem.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(title: Text("First Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/second', arguments: Mensagem("haa agora eu entendi"));
          },
          child: const Text("Navegar"),
        ),
      ),
    );
  }
}