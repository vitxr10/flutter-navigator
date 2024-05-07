import 'package:flutter/material.dart';

import '../mensagem.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments as Mensagem;

    return Scaffold(
      appBar: AppBar(title: Text(argument.descricao)),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("Voltar"),
        ),
      ),
    );
  }
}
