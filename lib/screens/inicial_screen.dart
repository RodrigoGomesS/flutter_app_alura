import 'package:flutter/material.dart';
import 'package:first_application/components/task.dart';

class InicialScreen extends StatefulWidget {
  const InicialScreen({super.key});

  @override
  State<InicialScreen> createState() => _InicialScreenState();
}

class _InicialScreenState extends State<InicialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Tarefas',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.yellowAccent,
      ),
      body: AnimatedOpacity(
        opacity: (opacidade == true) ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task(
              'Aprender Flutter',
              'assets/images/mascote_flutter.png',
              4,
            ),
            Task(
              'Aprender Dart',
              'assets/images/dart_icon.png',
              3,
            ),
            Task(
              'Aprender Programação',
              'assets/images/POO.png',
              5,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        backgroundColor: Colors.yellowAccent,
        child: const Icon(
          Icons.remove_red_eye,
          color: Colors.black,
        ),
      ),
    );
  }
}
